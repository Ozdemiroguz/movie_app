import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:cherry_toast/cherry_toast.dart';
import 'package:cherry_toast/resources/arrays.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_case/custom/custom_error_widget.dart';

import '../../../../custom/custom_image_widget.dart';
import '../../../../custom/custom_loading_widget.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../router/router.dart';
import '../../../../core/models/movie/movie.dart';
import '../bloc/home_bloc.dart';
import '../bloc/home_event.dart';
import '../bloc/home_state.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final CarouselSliderController _carouselController =
      CarouselSliderController();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: BlocListener<HomeBloc, HomeState>(
        listenWhen: (p, c) => c.singleTimeEvent != null,
        listener: (context, state) {
          state.singleTimeEvent?.when(
            showSuccessToast: (message) {
              CherryToast.success(
                backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                title: Text(message),
                animationType: AnimationType.fromTop,
              ).show(context);
            },
            showErrorToast: (message) {
              CherryToast.error(
                backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                title: Text(message),
                animationType: AnimationType.fromTop,
              ).show(context);
            },
          );
        },
        child: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            final hasMovies = state.paginatedMoviesResponse.movies.isNotEmpty;

            return state.status.when(
              initial: () =>
                  const Center(child: CircularProgressIndicator.adaptive()),
              loading: () {
                if (hasMovies) {
                  return _HomeContent(
                    height: height,
                    carouselController: _carouselController,
                  );
                }
                return const CustomLoadingWidget();
              },
              loadingMore: () => _HomeContent(
                height: height,
                carouselController: _carouselController,
              ),
              success: () => _HomeContent(
                height: height,
                carouselController: _carouselController,
              ),
              failure: (message) {
                if (hasMovies) {
                  return _HomeContent(
                    height: height,
                    carouselController: _carouselController,
                  );
                }
                return CustomErrorWidget(
                  message: message,
                  onRetry: () {
                    context.read<HomeBloc>().add(const HomeEvent.initialized());
                  },
                );
              },
            );
          },
        ),
      ),
    );
  }
}

class _HomeContent extends StatelessWidget {
  const _HomeContent({
    required this.height,
    required this.carouselController,
  });

  final double height;
  final CarouselSliderController carouselController;

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        final completer = Completer<void>();
        context
            .read<HomeBloc>()
            .add(HomeEvent.initialized(completer: completer));
        return completer.future;
      },
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          _CarouselSlider(
            height: height,
            carouselController: carouselController,
          ),
          const _BottomPart(),
          const _LikeButtonContainer(),
          _BackToTopButtonContainer(carouselController: carouselController),
        ],
      ),
    );
  }
}

class _CarouselSlider extends StatelessWidget {
  final double height;
  final CarouselSliderController carouselController;

  const _CarouselSlider(
      {required this.height, required this.carouselController});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<HomeBloc, HomeState, List<Movie>>(
      selector: (state) => state.paginatedMoviesResponse.movies,
      builder: (context, movies) {
        if (movies.isEmpty) {
          return const SizedBox.shrink();
        }
        return CarouselSlider.builder(
          carouselController: carouselController,
          options: CarouselOptions(
            onPageChanged: (index, reason) => context
                .read<HomeBloc>()
                .add(HomeEvent.pageChanged(newIndex: index)),
            enableInfiniteScroll: false,
            height: height,
            viewportFraction: 1,
            scrollDirection: Axis.vertical,
          ),
          itemCount: movies.length,
          itemBuilder: (context, itemIndex, pageViewIndex) {
            final movie = movies[itemIndex];
            return GestureDetector(
              onTap: () {
                context.router.push(MovieDetailRoute(movie: movie));
              },
              child:
                  CustomImageWidget(imageUrl: movie.posterUrl, height: height),
            );
          },
        );
      },
    );
  }
}

class _LikeButtonContainer extends StatelessWidget {
  const _LikeButtonContainer();

  @override
  Widget build(BuildContext context) {
    final hasMovies = context.select((HomeBloc bloc) =>
        bloc.state.paginatedMoviesResponse.movies.isNotEmpty);
    return hasMovies
        ? const Positioned(right: 17, bottom: 120, child: _LikeButton())
        : const SizedBox.shrink();
  }
}

class _LikeButton extends StatelessWidget {
  const _LikeButton();

  @override
  Widget build(BuildContext context) {
    final currentMovie = context.select<HomeBloc, Movie?>((bloc) {
      final state = bloc.state;
      if (state.paginatedMoviesResponse.movies.isEmpty ||
          state.currentIndex >= state.paginatedMoviesResponse.movies.length) {
        return null;
      }
      return state.paginatedMoviesResponse.movies[state.currentIndex];
    });

    if (currentMovie == null) {
      return const SizedBox.shrink();
    }

    return GestureDetector(
      onTap: () => context
          .read<HomeBloc>()
          .add(HomeEvent.favoriteToggled(movieId: currentMovie.id)),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 27),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.onSecondary.withAlpha(50),
          borderRadius: BorderRadius.circular(50),
          border: Border.all(
            color: Theme.of(context).colorScheme.onPrimary.withAlpha(50),
            width: 1,
          ),
        ),
        child: Center(
          child: Assets.icons.heart.svg(
            colorFilter: ColorFilter.mode(
              currentMovie.isFavorite
                  ? Theme.of(context).colorScheme.primary
                  : Theme.of(context).colorScheme.onPrimary,
              BlendMode.srcIn,
            ),
          ),
        ),
      ),
    );
  }
}

class _BackToTopButtonContainer extends StatelessWidget {
  final CarouselSliderController carouselController;
  const _BackToTopButtonContainer({required this.carouselController});

  @override
  Widget build(BuildContext context) {
    final currentIndex =
        context.select((HomeBloc bloc) => bloc.state.currentIndex);
    return currentIndex > 1
        ? Positioned(
            right: 17,
            bottom: 220,
            child: _BackToTopButton(carouselController: carouselController),
          )
        : const SizedBox.shrink();
  }
}

class _BackToTopButton extends StatelessWidget {
  final CarouselSliderController carouselController;
  const _BackToTopButton({required this.carouselController});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        carouselController.animateToPage(0);
        context.read<HomeBloc>().add(const HomeEvent.pageChanged(newIndex: 0));
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 27),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.onSecondary.withAlpha(50),
          borderRadius: BorderRadius.circular(50),
          border: Border.all(
            color: Theme.of(context).colorScheme.onPrimary.withAlpha(50),
            width: 1,
          ),
        ),
        child: Center(
          child: Icon(
            Icons.arrow_upward,
            color: Theme.of(context).colorScheme.onPrimary,
          ),
        ),
      ),
    );
  }
}

class _BottomPart extends StatelessWidget {
  const _BottomPart();
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Stack(
        children: [
          const _GradientBackground(),
        ],
      ),
    );
  }
}

class _GradientBackground extends StatelessWidget {
  const _GradientBackground();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 16, top: 32),
      child: const _BottomContent(),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.transparent,
            Theme.of(context).scaffoldBackgroundColor
          ],
          stops: const [0.0, 0.8],
        ),
      ),
    );
  }
}

class _BottomContent extends StatelessWidget {
  const _BottomContent();

  @override
  Widget build(BuildContext context) {
    final currentMovie = context.select<HomeBloc, Movie?>((bloc) {
      final state = bloc.state;
      if (state.paginatedMoviesResponse.movies.isEmpty ||
          state.currentIndex >= state.paginatedMoviesResponse.movies.length) {
        return null;
      }
      return state.paginatedMoviesResponse.movies[state.currentIndex];
    });

    if (currentMovie == null) {
      return const SizedBox.shrink();
    }
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 34.5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const _AppLogo(),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _MovieTitle(title: currentMovie.title),
                const SizedBox(height: 4),
                _MovieDescription(description: currentMovie.description),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _AppLogo extends StatelessWidget {
  const _AppLogo();

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          border: Border.all(
            color: Theme.of(context).colorScheme.onPrimary,
            width: 1.5,
          ),
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Image.asset("assets/images/logo.png"),
      ),
    );
  }
}

class _MovieTitle extends StatelessWidget {
  final String title;
  const _MovieTitle({required this.title});
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.titleSmall,
    );
  }
}

class _MovieDescription extends StatelessWidget {
  final String description;
  const _MovieDescription({required this.description});

  @override
  Widget build(BuildContext context) {
    final isExpanded =
        context.select((HomeBloc bloc) => bloc.state.isDescriptionExpanded);

    const maxLength = 55;
    final isLongText = description.length > maxLength;

    if (!isLongText || isExpanded) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(description, style: Theme.of(context).textTheme.labelMedium),
          if (isLongText)
            GestureDetector(
              onTap: () => context.read<HomeBloc>().add(
                    const HomeEvent.descriptionVisibilityChanged(
                        isExpanded: false),
                  ),
              child: Text(
                'show_less'.tr(),
                style: Theme.of(context)
                    .textTheme
                    .labelMedium
                    ?.copyWith(fontWeight: FontWeight.w700),
              ),
            ),
        ],
      );
    }

    return RichText(
      text: TextSpan(
        style: Theme.of(context).textTheme.labelMedium,
        children: [
          TextSpan(text: description.substring(0, maxLength)),
          const TextSpan(text: '... '),
          TextSpan(
            text: 'show_more'.tr(),
            style: Theme.of(context)
                .textTheme
                .labelMedium
                ?.copyWith(fontWeight: FontWeight.w700),
            recognizer: TapGestureRecognizer()
              ..onTap = () => context.read<HomeBloc>().add(
                    const HomeEvent.descriptionVisibilityChanged(
                        isExpanded: true),
                  ),
          ),
        ],
      ),
    );
  }
}
