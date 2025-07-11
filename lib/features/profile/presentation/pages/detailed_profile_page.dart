import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../custom/custom_app_bar.dart';
import '../../../../custom/custom_image_widget.dart';
import '../../../../core/injections/locator.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../router/router.dart';
import '../../../../core/models/movie/movie.dart';
import '../bloc/favorite_movies/favorite_movies_bloc.dart';
import '../bloc/profile/profile_bloc.dart';
import '../bloc/profile/profile_event.dart';
import '../bloc/profile/profile_state.dart';
import '../widgets/profile_header.dart';
import '../widgets/tokken_bottom_sheet.dart';

@RoutePage()
class DetailedProfilePage extends StatelessWidget {
  const DetailedProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: getIt<ProfileBloc>(),
      child: Scaffold(
        appBar: CustomAppBar(
          title: 'profile_detailed'.tr(),
          actions: const [
            _LimitedOfferButton(),
          ],
        ),
        // Bu sayfada birden fazla BLoC'tan veri okuduğumuz için,
        // her bölümü kendi BlocBuilder'ı ile sarmalamak en temiz yöntemdir.
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const _ProfileHeaderSection(), // Header'ı kendi widget'ına ayırdık
            const SizedBox(height: 28),
            const _LikedMoviesTitle(),
            const _FavoriteMovies(), // Favori filmleri kendi widget'ına ayırdık
          ],
        ),
      ),
    );
  }
}

class _FavoriteMovies extends StatelessWidget {
  const _FavoriteMovies();

  @override
  Widget build(BuildContext context) {
    // Bu widget SADECE HomeBloc'u dinler ve favori filmleri seçer.
    // Repository'deki stream sayesinde, bu liste her zaman günceldir.
    return BlocProvider(
        create: (context) => getIt<FavoriteMoviesBloc>(),
        child: BlocBuilder<FavoriteMoviesBloc, FavoriteMoviesState>(
          builder: (context, state) {
            return state.when(
              initial: () => const SizedBox.shrink(),
              loading: () => const Expanded(
                child: Center(child: CircularProgressIndicator.adaptive()),
              ),
              loaded: (movies) {
                if (movies.isEmpty) {
                  return Expanded(
                    child: Center(child: Text('no_favorite_movies'.tr())),
                  );
                }
                return Expanded(
                  child: GridView.builder(
                    padding: const EdgeInsets.symmetric(
                        vertical: 24, horizontal: 40),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 16,
                      childAspectRatio: 0.6,
                    ),
                    itemCount: movies.length,
                    itemBuilder: (context, index) {
                      return _MovieCard(movie: movies[index]);
                    },
                  ),
                );
              },
              error: (failure) => Expanded(
                child: Center(child: Text(failure.message)),
              ),
            );
          },
        ));
  }
}

class _ProfileHeaderSection extends StatelessWidget {
  const _ProfileHeaderSection();

  @override
  Widget build(BuildContext context) {
    // Bu widget SADECE ProfileBloc'u dinler.
    return BlocBuilder<ProfileBloc, ProfileState>(
      buildWhen: (p, c) => p.profile != c.profile,
      builder: (context, state) {
        return ProfileHeader(
          name: state.profile.name,
          id: state.profile.id,
          imageUrl: state.profile.photoUrl,
          isProfile: false,
          buttonAction: () async {
            final result = await AutoRouter.of(context)
                .push(ProfileImageUpdateRoute(isSetupAccount: false));
            if (result == true) {
              context
                  .read<ProfileBloc>()
                  .add(const ProfileEvent.profileFetched());
            }
          },
        );
      },
    );
  }
}

class _LimitedOfferButton extends StatelessWidget {
  const _LimitedOfferButton();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
          context: context,
          backgroundColor: Colors.transparent,
          isScrollControlled: true,
          builder: (context) {
            return TokenBottomSheet();
          },
        );
      },
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(53),
        ),
        child: Row(
          children: [
            Assets.icons.gemIconlyPro.svg(
              width: 18,
              height: 18,
            ),
            const SizedBox(width: 4),
            Text(
              'limited_offer'.tr(),
              style: Theme.of(context).textTheme.labelSmall!.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
            )
          ],
        ),
      ),
    );
  }
}

class _LikedMoviesTitle extends StatelessWidget {
  const _LikedMoviesTitle();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40.0),
      child: Text(
        'liked_movie'.tr(),
        style: Theme.of(context).textTheme.labelMedium!.copyWith(
              fontWeight: FontWeight.w700,
            ),
      ),
    );
  }
}

class _MovieCard extends ConsumerWidget {
  final Movie movie;

  const _MovieCard({required this.movie});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () {
        AutoRouter.of(context).push(MovieDetailRoute(movie: movie));
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: CustomImageWidget(
                  imageUrl: movie.posterUrl,
                  height: 200,
                ),
              ),
              Positioned(
                top: 8,
                right: 8,
                child: GestureDetector(
                  onTap: () {
                    showDialog<void>(
                      context: context,
                      builder: (BuildContext dialogContext) {
                        return AlertDialog(
                          title: Text('remove_from_favorites_title'.tr()),
                          content: Text('remove_from_favorites_content'.tr()),
                          actions: <Widget>[
                            TextButton(
                              child: Text('cancel'.tr()),
                              onPressed: () {
                                Navigator.of(dialogContext).pop();
                              },
                            ),
                            TextButton(
                              child: Text('remove'.tr()),
                              onPressed: () {
                                context.read<FavoriteMoviesBloc>().add(
                                      FavoriteMoviesEvent.toggleFavorite(
                                          movieId: movie.id),
                                    );
                                Navigator.of(dialogContext).pop();
                              },
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Theme.of(context)
                          .colorScheme
                          .onSecondary
                          .withAlpha(50),
                      shape: BoxShape.circle,
                    ),
                    child: Assets.icons.heart.svg(
                      colorFilter: ColorFilter.mode(
                        Theme.of(context).colorScheme.primary,
                        BlendMode.srcIn,
                      ),
                      width: 20,
                      height: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Text(
            movie.title,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.labelMedium!.copyWith(
                  fontWeight: FontWeight.w700,
                ),
          ),
          Text(
            movie.director,
            style: Theme.of(context).textTheme.labelSmall!.copyWith(
                  color: Theme.of(context).colorScheme.onPrimary.withAlpha(125),
                ),
          ),
        ],
      ),
    );
  }
}
