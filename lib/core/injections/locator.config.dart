// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:typed_data' as _i100;

import 'package:cross_connectivity/cross_connectivity.dart' as _i318;
import 'package:dio/dio.dart' as _i361;
import 'package:firebase_crashlytics/firebase_crashlytics.dart' as _i141;
import 'package:flutter/material.dart' as _i409;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i558;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

import '../../features/auth/data/datasources/auth_remote_data_source_impl.dart'
    as _i123;
import '../../features/auth/data/repositories/auth_repository_impl.dart'
    as _i153;
import '../../features/auth/domain/datasources/auth_remote_data_source.dart'
    as _i841;
import '../../features/auth/domain/repositories/auth_repository.dart' as _i787;
import '../../features/auth/presentation/bloc/login/login_bloc.dart' as _i208;
import '../../features/auth/presentation/bloc/signup/signup_bloc.dart' as _i173;
import '../../features/home/data/datasources/movies_remote_data_source_impl.dart'
    as _i562;
import '../../features/home/data/repositories/movie_repository.dart' as _i464;
import '../../features/home/domain/datasources/movies_remote_data_source.dart'
    as _i614;
import '../../features/home/domain/repositories/movie_repository.dart'
    as _i1023;
import '../../features/home/presentation/bloc/home_bloc.dart' as _i202;
import '../../features/profile/data/datasources/profile_remote_data_source_impl.dart'
    as _i1036;
import '../../features/profile/data/repositories/profile_repository_impl.dart'
    as _i334;
import '../../features/profile/domain/datasources/profile_remote_data_source.dart'
    as _i226;
import '../../features/profile/domain/repositories/profile_repository.dart'
    as _i894;
import '../../features/profile/presentation/bloc/favorite_movies/favorite_movies_bloc.dart'
    as _i35;
import '../../features/profile/presentation/bloc/profile/profile_bloc.dart'
    as _i717;
import '../../features/profile/presentation/bloc/profile_image_update/profile_image_update_bloc.dart'
    as _i963;
import '../../router/router.dart' as _i295;
import '../../services/jwt/jwt_service.dart' as _i769;
import '../../services/jwt/jwt_service_impl.dart' as _i47;
import '../../services/locale/locale_resources_service.dart' as _i354;
import '../../services/locale/locale_resources_service_impl.dart' as _i94;
import '../../services/logger/logger_service.dart' as _i238;
import '../../services/logger/logger_service_impl.dart' as _i585;
import '../../services/network/network_info.dart' as _i538;
import '../../services/network/network_info_impl.dart' as _i184;
import '../../services/network/network_service.dart' as _i298;
import '../../services/network/network_service_impl.dart' as _i669;
import '../models/usecases/base_64_encode.dart' as _i112;
import '../models/usecases/usecase.dart' as _i931;
import '../settings_bloc/settings_bloc.dart' as _i761;
import 'register_module.dart' as _i291;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.lazySingleton<_i295.AppRouter>(() => registerModule.appRouter);
    gh.lazySingleton<_i318.Connectivity>(() => registerModule.connectivity);
    await gh.lazySingletonAsync<_i460.SharedPreferences>(
      () => registerModule.sharedPreferences,
      preResolve: true,
    );
    gh.lazySingleton<_i558.FlutterSecureStorage>(
        () => registerModule.secureStorage);
    gh.lazySingleton<_i361.Dio>(() => registerModule.dio);
    gh.lazySingleton<_i141.FirebaseCrashlytics>(
        () => registerModule.firebaseCrashlytics);
    gh.lazySingleton<_i931.UseCase<String, _i100.Uint8List>>(
        () => const _i112.Base64Encode());
    gh.lazySingleton<_i769.JwtService>(() => _i47.JwtServiceImpl());
    gh.lazySingleton<_i238.LoggerService>(() => _i585.LoggerServiceImpl());
    gh.lazySingleton<_i538.NetworkInfo>(() => _i184.NetworkInfoImpl(
          connectivity: gh<_i318.Connectivity>(),
          logger: gh<_i238.LoggerService>(),
        ));
    gh.lazySingleton<_i354.LocaleResourcesService>(
        () => _i94.LocaleResourcesServiceImpl(
              gh<_i460.SharedPreferences>(),
              gh<_i558.FlutterSecureStorage>(),
              gh<_i238.LoggerService>(),
            ));
    gh.factoryParam<_i761.SettingsBloc, _i409.ThemeMode?, dynamic>((
      initialThemeMode,
      _,
    ) =>
        _i761.SettingsBloc(
          gh<_i354.LocaleResourcesService>(),
          gh<_i238.LoggerService>(),
          initialThemeMode,
        ));
    gh.lazySingleton<_i298.NetworkService>(() => _i669.NetworkServiceImpl(
          gh<_i361.Dio>(),
          localeResourcesService: gh<_i354.LocaleResourcesService>(),
          networkInfo: gh<_i538.NetworkInfo>(),
          logger: gh<_i238.LoggerService>(),
        ));
    gh.lazySingleton<_i614.MoviesRemoteDataSource>(
        () => _i562.MoviesRemoteDataSourceImpl(
              gh<_i298.NetworkService>(),
              gh<_i238.LoggerService>(),
            ));
    gh.lazySingleton<_i226.ProfileRemoteDataSource>(
        () => _i1036.ProfileRemoteDataSourceImpl(
              gh<_i298.NetworkService>(),
              gh<_i238.LoggerService>(),
            ));
    gh.lazySingleton<_i1023.MoviesRepository>(() => _i464.MoviesRepositoryImpl(
          gh<_i614.MoviesRemoteDataSource>(),
          gh<_i238.LoggerService>(),
        ));
    gh.lazySingleton<_i841.AuthRemoteDataSource>(
        () => _i123.AuthRemoteDataSourceImpl(
              gh<_i298.NetworkService>(),
              gh<_i238.LoggerService>(),
            ));
    gh.factory<_i202.HomeBloc>(() => _i202.HomeBloc(
          gh<_i1023.MoviesRepository>(),
          gh<_i238.LoggerService>(),
        ));
    gh.factory<_i35.FavoriteMoviesBloc>(() => _i35.FavoriteMoviesBloc(
          gh<_i1023.MoviesRepository>(),
          gh<_i238.LoggerService>(),
        ));
    gh.lazySingleton<_i894.ProfileRepository>(() => _i334.ProfileRepositoryImpl(
          gh<_i226.ProfileRemoteDataSource>(),
          gh<_i238.LoggerService>(),
        ));
    gh.lazySingleton<_i787.AuthRepository>(() => _i153.AuthRepositoryImpl(
          remoteDataSource: gh<_i841.AuthRemoteDataSource>(),
          localeResourcesService: gh<_i354.LocaleResourcesService>(),
          networkService: gh<_i298.NetworkService>(),
          logger: gh<_i238.LoggerService>(),
        ));
    gh.factory<_i717.ProfileBloc>(() => _i717.ProfileBloc(
          gh<_i894.ProfileRepository>(),
          gh<_i787.AuthRepository>(),
          gh<_i238.LoggerService>(),
        ));
    gh.factory<_i963.ProfileImageUpdateBloc>(() => _i963.ProfileImageUpdateBloc(
          gh<_i894.ProfileRepository>(),
          gh<_i238.LoggerService>(),
        ));
    gh.factory<_i173.SignupBloc>(() => _i173.SignupBloc(
          authRepository: gh<_i787.AuthRepository>(),
          logger: gh<_i238.LoggerService>(),
        ));
    gh.factory<_i208.LoginBloc>(() => _i208.LoginBloc(
          authRepository: gh<_i787.AuthRepository>(),
          logger: gh<_i238.LoggerService>(),
        ));
    return this;
  }
}

class _$RegisterModule extends _i291.RegisterModule {
  @override
  _i295.AppRouter get appRouter => _i295.AppRouter();

  @override
  _i318.Connectivity get connectivity => _i318.Connectivity();
}
