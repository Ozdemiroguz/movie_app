// lib/features/profile/data/datasources/profile_remote_data_source_impl.dart
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../constants/api_endpoints.dart';
import '../../../../core/models/failure/failure.dart';
import '../../../../services/network/network_service.dart';
import '../../domain/datasources/profile_remote_data_source.dart';
import '../../domain/models/profile/profile_model.dart';

@LazySingleton(as: ProfileRemoteDataSource)
class ProfileRemoteDataSourceImpl implements ProfileRemoteDataSource {
  final NetworkService _networkService;
  const ProfileRemoteDataSourceImpl(this._networkService);

  @override
  Future<Either<Failure, ProfileModel>> getProfile() async {
    final result = await _networkService.get(Endpoints.profile);
    return result.fold(
      (failure) => left(failure),
      (response) {
        try {
          final data = response.data?['data'];
          if (data != null && data is Map<String, dynamic>) {
            return right(ProfileModel.fromJson(data));
          }
          return left(const Failure.unknownError(
              'Profile data is missing or invalid.'));
        } catch (e) {
          return left(Failure.unknownError('Failed to parse profile data: $e'));
        }
      },
    );
  }

  @override
  Future<Either<Failure, String>> uploadProfilePhoto(File file) async {
    final fileName = file.path.split('/').last;
    final formData = FormData.fromMap({
      "file": await MultipartFile.fromFile(file.path, filename: fileName),
    });

    final result = await _networkService.post(
      Endpoints.upload_photo,
      data: formData,
      optionalHeaders: {"Content-Type": "multipart/form-data"},
    );

    return result.fold(
      (failure) => left(failure),
      (response) {
        final data = response.data?['data'];
        if (data is Map<String, dynamic> && data['photoUrl'] is String) {
          return right(data['photoUrl']);
        }
        return left(
            const Failure.unknownError('Photo URL not found in response.'));
      },
    );
  }
}
