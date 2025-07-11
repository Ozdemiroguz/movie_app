// lib/features/profile/data/repositories/profile_repository_impl.dart
import 'dart:developer';
import 'dart:io';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';

import '../../../../core/models/failure/failure.dart';
import '../../domain/datasources/profile_remote_data_source.dart';
import '../../domain/models/profile/profile_model.dart';
import '../../domain/repositories/profile_repository.dart';

@LazySingleton(as: ProfileRepository)
class ProfileRepositoryImpl implements ProfileRepository {
  final ProfileRemoteDataSource _remoteDataSource;

  // Bağımlılıklarda artık ImageService yok.
  const ProfileRepositoryImpl(this._remoteDataSource);

  @override
  Future<Either<Failure, ProfileModel>> getProfile() {
    // Bu metodun sorumluluğu basit, sadece DataSource'u çağırır.
    return _remoteDataSource.getProfile();
  }

  @override
  Future<Either<Failure, String>> uploadProfilePhoto(File file) async {
    // Görüntü sıkıştırma ve yükleme mantığı burada bir arada.

    // 1. Resmi sıkıştır.
    final Either<Failure, File> compressionResult = await _compressImage(file);

    // `fold` kullanarak hata durumunu yönetiyoruz.
    // Bu, iç içe `if/else` veya `try/catch`'ten daha temizdir.
    return await compressionResult.fold(
      // Sıkıştırma başarısız olursa, hatayı doğrudan döndür.
      (failure) async {
        log(failure.toString());
        return left(failure);
      },

      // Sıkıştırma başarılı olursa, sıkıştırılmış dosyayı yükle.
      (compressedFile) async {
        return _remoteDataSource.uploadProfilePhoto(compressedFile);
      },
    );
  }

  /// Görüntü sıkıştırma mantığını içeren özel (private) bir yardımcı metod.
  /// Bu, `uploadProfilePhoto` metodunun okunabilirliğini artırır.
  /// Görüntü sıkıştırma mantığını içeren özel (private) bir yardımcı metod.
  Future<Either<Failure, File>> _compressImage(File file) async {
    try {
      final dir = await getTemporaryDirectory();

      // --- DEĞİŞİKLİK BURADA ---
      // Benzersiz bir dosya adı oluşturmak için şu anki zamanı kullanıyoruz.
      // `DateTime.now().millisecondsSinceEpoch` bize 1 Ocak 1970'ten beri
      // geçen milisaniye sayısını verir, bu da oldukça benzersizdir.
      final timestamp = DateTime.now().millisecondsSinceEpoch;
      final targetPath = path.join(dir.path, 'compressed_$timestamp.jpg');

      // Sıkıştırma yaparken formatı da belirtiyoruz.
      final result = await FlutterImageCompress.compressAndGetFile(
        file.absolute.path,
        targetPath,
        quality: 80,
        minWidth: 800,
        minHeight: 800,
        format: CompressFormat.jpeg, // Çıktı formatını zorunlu olarak JPEG yap.
      );

      if (result == null) {
        return left(const Failure.unknownError(
            'Image compression failed: result was null.'));
      }
      return right(File(result.path));
    } catch (e) {
      return left(Failure.unknownError('Image compression failed: $e'));
    }
  }
}
