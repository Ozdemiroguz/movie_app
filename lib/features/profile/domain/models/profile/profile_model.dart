// lib/features/profile/domain/models/profile_model.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_model.freezed.dart';
// part 'profile_model.g.dart'; // .g.dart dosyasını ve bağımlılığını kaldırıyoruz.

@freezed
abstract class ProfileModel with _$ProfileModel {
  // const constructor'ı private yapıyoruz.
  const ProfileModel._();

  const factory ProfileModel({
    required String id,
    required String name,
    required String email,
    @Default('') String photoUrl,
  }) = _ProfileModel;

  /// fromJson metodunu manuel yazarak API'nin düzensiz 'id' / '_id'
  /// yapısını ve null durumlarını güvenli bir şekilde yönetiyoruz.
  factory ProfileModel.fromJson(Map<String, dynamic> json) {
    return ProfileModel(
      // Önce 'id' anahtarını, yoksa '_id' anahtarını arar.
      // İkisi de yoksa veya null ise boş bir string atar.
      id: (json['id'] ?? json['_id'])?.toString() ?? '',
      name: json['name'] as String? ?? '',
      email: json['email'] as String? ?? '',
      photoUrl: json['photoUrl'] as String? ?? '',
    );
  }

  /// Boş bir profil modeli oluşturmak için.
  factory ProfileModel.empty() {
    return const ProfileModel(
      id: '',
      name: '',
      email: '',
      photoUrl: '',
    );
  }
}
