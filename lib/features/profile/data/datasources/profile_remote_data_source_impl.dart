import 'dart:io';
import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../constants/api_endpoints.dart';
import '../../../../core/models/failure/failure.dart';
import '../../../../services/network/network_service.dart';
import '../../../../services/logger/logger_service.dart';
import '../../domain/datasources/profile_remote_data_source.dart';
import '../../domain/models/profile/profile_model.dart';

@LazySingleton(as: ProfileRemoteDataSource)
class ProfileRemoteDataSourceImpl implements ProfileRemoteDataSource {
  final NetworkService _networkService;
  final LoggerService _logger;

  const ProfileRemoteDataSourceImpl(this._networkService, this._logger);

  @override
  Future<Either<Failure, ProfileModel>> getProfile() async {
    final result = await _networkService.get(Endpoints.profile);
    return result.fold(
      (failure) {
        _logger.e('Failed to get profile', error: failure);
        return left(failure);
      },
      (response) {
        try {
          final data = response.data?['data'];
          if (data != null && data is Map<String, dynamic>) {
            _logger.i('Successfully fetched profile data.');
            return right(ProfileModel.fromJson(data));
          }
          _logger.w('Profile data is missing or invalid.');
          return left(const Failure.unknownError(
              'Profile data is missing or invalid.'));
        } catch (e, s) {
          _logger.e('Failed to parse profile data', error: e, stackTrace: s);
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
      (failure) {
        _logger.e('Failed to upload profile photo', error: failure);
        return left(failure);
      },
      (response) {
        final data = response.data?['data'];
        if (data is Map<String, dynamic> && data['photoUrl'] is String) {
          _logger.i('Successfully uploaded profile photo.');
          return right(data['photoUrl']);
        }
        _logger.w('Photo URL not found in response.');
        return left(
            const Failure.unknownError('Photo URL not found in response.'));
      },
    );
  }
}
