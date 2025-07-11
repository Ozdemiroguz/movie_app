import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../../../../custom/custom_icon_widget.dart';
import '../../../../custom/custom_image_widget.dart';
import '../../../../core/models/movie/movie.dart';

@RoutePage()
class MovieDetailPage extends StatelessWidget {
  final Movie movie;

  const MovieDetailPage({
    super.key,
    required this.movie,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _CustomHeader(movieTitle: movie.title),
            _MovieMediaSection(movie: movie),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _MovieBasicInfo(movie: movie),
                  const SizedBox(height: 16),
                  _MovieDescription(description: movie.description),
                  const SizedBox(height: 16),
                  _MovieDetailedInfo(movie: movie),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _CustomHeader extends StatelessWidget {
  final String movieTitle;

  const _CustomHeader({required this.movieTitle});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Row(
          children: [
            CustomIconWidget.backButton(
              onTap: () => context.router.pop(),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Text(
                textAlign: TextAlign.center,
                movieTitle,
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const SizedBox(width: 72),
          ],
        ),
      ),
    );
  }
}

class _MovieMediaSection extends StatefulWidget {
  final Movie movie;

  const _MovieMediaSection({required this.movie});

  @override
  State<_MovieMediaSection> createState() => _MovieMediaSectionState();
}

class _MovieMediaSectionState extends State<_MovieMediaSection> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final images = widget.movie.images;

    if (images.isNotEmpty) {
      return Container(
        height: 400,
        width: double.infinity,
        child: Stack(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                height: 400,
                viewportFraction: 1.0,
                enableInfiniteScroll: images.length > 1,
                autoPlay: images.length > 1,
                autoPlayInterval: const Duration(seconds: 3),
                onPageChanged: (index, reason) {
                  setState(() {
                    currentIndex = index;
                  });
                },
              ),
              items: images.map((imageUrl) {
                return CustomImageWidget(
                  imageUrl: imageUrl,
                  height: 400,
                );
              }).toList(),
            ),
            if (images.length > 1)
              Positioned(
                bottom: 16,
                left: 0,
                right: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: images.asMap().entries.map((entry) {
                    return Container(
                      width: 8,
                      height: 8,
                      margin: const EdgeInsets.symmetric(horizontal: 4),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: currentIndex == entry.key
                            ? Theme.of(context).colorScheme.primary
                            : Colors.white.withAlpha(40),
                      ),
                    );
                  }).toList(),
                ),
              ),
          ],
        ),
      );
    } else {
      return Container(
        height: 400,
        width: double.infinity,
        child: Stack(
          children: [
            CustomImageWidget(
              imageUrl: widget.movie.posterUrl,
              height: 400,
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Theme.of(context).scaffoldBackgroundColor.withAlpha(80),
                  ],
                  stops: const [0.6, 1.0],
                ),
              ),
            ),
          ],
        ),
      );
    }
  }
}

class _MovieBasicInfo extends StatelessWidget {
  final Movie movie;

  const _MovieBasicInfo({required this.movie});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (movie.imdbRating != null) ...[
          const Icon(Icons.star, color: Colors.amber, size: 20),
          const SizedBox(width: 4),
          Text(
            movie.imdbRating!,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
          ),
          const SizedBox(width: 16),
        ],
        if (movie.year != null) ...[
          Icon(
            Icons.calendar_today,
            size: 16,
            color: Theme.of(context).textTheme.bodyMedium?.color,
          ),
          const SizedBox(width: 4),
          Text(
            movie.year!,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ],
    );
  }
}

class _MovieDescription extends StatelessWidget {
  final String description;

  const _MovieDescription({required this.description});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'plot'.tr(),
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 8),
            Text(
              description,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}

class _MovieDetailedInfo extends StatelessWidget {
  final Movie movie;

  const _MovieDetailedInfo({required this.movie});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (movie.director.isNotEmpty)
          _InfoItem(
            title: 'director'.tr(),
            value: movie.director,
            icon: Icons.movie_creation,
          ),
        if (movie.genre != null && movie.genre!.isNotEmpty)
          _InfoItem(
            title: 'genre'.tr(),
            value: movie.genre!,
            icon: Icons.category,
          ),
        if (movie.runtime != null && movie.runtime!.isNotEmpty)
          _InfoItem(
            title: 'runtime'.tr(),
            value: movie.runtime!,
            icon: Icons.access_time,
          ),
        if (movie.actors != null && movie.actors!.isNotEmpty)
          _InfoItem(
            title: 'actors'.tr(),
            value: movie.actors!,
            icon: Icons.people,
          ),
        if (movie.writer != null && movie.writer!.isNotEmpty)
          _InfoItem(
            title: 'writer'.tr(),
            value: movie.writer!,
            icon: Icons.create,
          ),
        if (movie.country != null && movie.country!.isNotEmpty)
          _InfoItem(
            title: 'country'.tr(),
            value: movie.country!,
            icon: Icons.flag,
          ),
        if (movie.language != null && movie.language!.isNotEmpty)
          _InfoItem(
            title: 'language'.tr(),
            value: movie.language!,
            icon: Icons.language,
          ),
        if (movie.released != null && movie.released!.isNotEmpty)
          _InfoItem(
            title: 'released'.tr(),
            value: movie.released!,
            icon: Icons.event,
          ),
        if (movie.awards != null && movie.awards!.isNotEmpty)
          _InfoItem(
            title: 'awards'.tr(),
            value: movie.awards!,
            icon: Icons.emoji_events,
          ),
      ],
    );
  }
}

class _InfoItem extends StatelessWidget {
  final String title;
  final String value;
  final IconData icon;

  const _InfoItem({
    required this.title,
    required this.value,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              icon,
              size: 18,
              color: Theme.of(context).colorScheme.primary,
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          fontWeight: FontWeight.w600,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    value,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
