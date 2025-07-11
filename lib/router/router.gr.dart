// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

/// generated route for
/// [AuthWrapperPage]
class AuthWrapperRoute extends PageRouteInfo<void> {
  const AuthWrapperRoute({List<PageRouteInfo>? children})
      : super(AuthWrapperRoute.name, initialChildren: children);

  static const String name = 'AuthWrapperRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const AuthWrapperPage();
    },
  );
}

/// generated route for
/// [DetailedProfilePage]
class DetailedProfileRoute extends PageRouteInfo<void> {
  const DetailedProfileRoute({List<PageRouteInfo>? children})
      : super(DetailedProfileRoute.name, initialChildren: children);

  static const String name = 'DetailedProfileRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const DetailedProfilePage();
    },
  );
}

/// generated route for
/// [HomeNavBarPage]
class HomeNavBarRoute extends PageRouteInfo<void> {
  const HomeNavBarRoute({List<PageRouteInfo>? children})
      : super(HomeNavBarRoute.name, initialChildren: children);

  static const String name = 'HomeNavBarRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const HomeNavBarPage();
    },
  );
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const HomePage();
    },
  );
}

/// generated route for
/// [LoginPage]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute({List<PageRouteInfo>? children})
      : super(LoginRoute.name, initialChildren: children);

  static const String name = 'LoginRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const LoginPage();
    },
  );
}

/// generated route for
/// [MovieDetailPage]
class MovieDetailRoute extends PageRouteInfo<MovieDetailRouteArgs> {
  MovieDetailRoute({
    Key? key,
    required Movie movie,
    List<PageRouteInfo>? children,
  }) : super(
          MovieDetailRoute.name,
          args: MovieDetailRouteArgs(key: key, movie: movie),
          initialChildren: children,
        );

  static const String name = 'MovieDetailRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<MovieDetailRouteArgs>();
      return MovieDetailPage(key: args.key, movie: args.movie);
    },
  );
}

class MovieDetailRouteArgs {
  const MovieDetailRouteArgs({this.key, required this.movie});

  final Key? key;

  final Movie movie;

  @override
  String toString() {
    return 'MovieDetailRouteArgs{key: $key, movie: $movie}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! MovieDetailRouteArgs) return false;
    return key == other.key && movie == other.movie;
  }

  @override
  int get hashCode => key.hashCode ^ movie.hashCode;
}

/// generated route for
/// [ProfileImageUpdatePage]
class ProfileImageUpdateRoute
    extends PageRouteInfo<ProfileImageUpdateRouteArgs> {
  ProfileImageUpdateRoute({
    Key? key,
    bool isSetupAccount = false,
    List<PageRouteInfo>? children,
  }) : super(
          ProfileImageUpdateRoute.name,
          args: ProfileImageUpdateRouteArgs(
            key: key,
            isSetupAccount: isSetupAccount,
          ),
          rawPathParams: {'isSetupAccount': isSetupAccount},
          initialChildren: children,
        );

  static const String name = 'ProfileImageUpdateRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<ProfileImageUpdateRouteArgs>(
        orElse: () => ProfileImageUpdateRouteArgs(
          isSetupAccount: pathParams.getBool('isSetupAccount', false),
        ),
      );
      return ProfileImageUpdatePage(
        key: args.key,
        isSetupAccount: args.isSetupAccount,
      );
    },
  );
}

class ProfileImageUpdateRouteArgs {
  const ProfileImageUpdateRouteArgs({this.key, this.isSetupAccount = false});

  final Key? key;

  final bool isSetupAccount;

  @override
  String toString() {
    return 'ProfileImageUpdateRouteArgs{key: $key, isSetupAccount: $isSetupAccount}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ProfileImageUpdateRouteArgs) return false;
    return key == other.key && isSetupAccount == other.isSetupAccount;
  }

  @override
  int get hashCode => key.hashCode ^ isSetupAccount.hashCode;
}

/// generated route for
/// [ProfilePage]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute({List<PageRouteInfo>? children})
      : super(ProfileRoute.name, initialChildren: children);

  static const String name = 'ProfileRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ProfilePage();
    },
  );
}

/// generated route for
/// [RegisterPage]
class RegisterRoute extends PageRouteInfo<void> {
  const RegisterRoute({List<PageRouteInfo>? children})
      : super(RegisterRoute.name, initialChildren: children);

  static const String name = 'RegisterRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const RegisterPage();
    },
  );
}

/// generated route for
/// [SettingsPage]
class SettingsRoute extends PageRouteInfo<void> {
  const SettingsRoute({List<PageRouteInfo>? children})
      : super(SettingsRoute.name, initialChildren: children);

  static const String name = 'SettingsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SettingsPage();
    },
  );
}

/// generated route for
/// [SplashPage]
class SplashRoute extends PageRouteInfo<SplashRouteArgs> {
  SplashRoute({
    Key? key,
    String? resetToken,
    String? userId,
    List<PageRouteInfo>? children,
  }) : super(
          SplashRoute.name,
          args: SplashRouteArgs(
            key: key,
            resetToken: resetToken,
            userId: userId,
          ),
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SplashRouteArgs>(
        orElse: () => const SplashRouteArgs(),
      );
      return SplashPage(
        key: args.key,
        resetToken: args.resetToken,
        userId: args.userId,
      );
    },
  );
}

class SplashRouteArgs {
  const SplashRouteArgs({this.key, this.resetToken, this.userId});

  final Key? key;

  final String? resetToken;

  final String? userId;

  @override
  String toString() {
    return 'SplashRouteArgs{key: $key, resetToken: $resetToken, userId: $userId}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! SplashRouteArgs) return false;
    return key == other.key &&
        resetToken == other.resetToken &&
        userId == other.userId;
  }

  @override
  int get hashCode => key.hashCode ^ resetToken.hashCode ^ userId.hashCode;
}
