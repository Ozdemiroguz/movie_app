// lib/features/profile/domain/datasources/profile_remote_data_source.dart
import 'dart:io';
import 'package:fpdart/fpdart.dart';
import '../../../../core/models/failure/failure.dart';
import '../models/profile/profile_model.dart';

abstract interface class ProfileRemoteDataSource {
  Future<Either<Failure, ProfileModel>> getProfile();
  Future<Either<Failure, String>> uploadProfilePhoto(File file);
}
