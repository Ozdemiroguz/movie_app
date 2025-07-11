import 'dart:io';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';

import '../../../../core/models/failure/failure.dart';
import '../../../../services/logger/logger_service.dart';
import '../../domain/datasources/profile_remote_data_source.dart';
import '../../domain/models/profile/profile_model.dart';
import '../../domain/repositories/profile_repository.dart';

@LazySingleton(as: ProfileRepository)
class ProfileRepositoryImpl implements ProfileRepository {
  final ProfileRemoteDataSource _remoteDataSource;
  final LoggerService _logger;

  const ProfileRepositoryImpl(this._remoteDataSource, this._logger);

  @override
  Future<Either<Failure, ProfileModel>> getProfile() {
    return _remoteDataSource.getProfile();
  }

  @override
  Future<Either<Failure, String>> uploadProfilePhoto(File file) async {
    final Either<Failure, File> compressionResult = await _compressImage(file);

    return await compressionResult.fold(
      (failure) async {
        _logger.e('Image compression failed', error: failure);
        return left(failure);
      },
      (compressedFile) async {
        return _remoteDataSource.uploadProfilePhoto(compressedFile);
      },
    );
  }

  Future<Either<Failure, File>> _compressImage(File file) async {
    try {
      _logger.i('Starting image compression.');
      final dir = await getTemporaryDirectory();

      final timestamp = DateTime.now().millisecondsSinceEpoch;
      final targetPath = path.join(dir.path, 'compressed_$timestamp.jpg');

      final result = await FlutterImageCompress.compressAndGetFile(
        file.absolute.path,
        targetPath,
        quality: 80,
        minWidth: 800,
        minHeight: 800,
        format: CompressFormat.jpeg,
      );

      if (result == null) {
        _logger.w('Image compression failed: result was null.');
        return left(const Failure.unknownError(
            'Image compression failed: result was null.'));
      }
      _logger.i('Image compressed successfully.');
      return right(File(result.path));
    } catch (e, s) {
      _logger.e('Image compression failed unexpectedly',
          error: e, stackTrace: s);
      return left(Failure.unknownError('Image compression failed: $e'));
    }
  }
}
