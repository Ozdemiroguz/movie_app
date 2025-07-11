import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../router/router.dart';

class ProfileHeader extends StatelessWidget {
  final String name;
  final String id;
  final String imageUrl;
  final bool isProfile;
  final VoidCallback? onTap;
  final VoidCallback? buttonAction;

  const ProfileHeader({
    super.key,
    required this.name,
    required this.id,
    required this.imageUrl,
    this.isProfile = true,
    this.onTap,
    this.buttonAction,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: isProfile
          ? onTap ?? () => AutoRouter.of(context).push(DetailedProfileRoute())
          : null,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 26),
        child: Row(
          children: [
            _ProfileAvatar(imageUrl: imageUrl),
            const SizedBox(width: 16),
            _ProfileInfo(
              name: name,
              id: id,
              isProfile: isProfile,
            ),
            const Spacer(),
            _TrailingWidget(
              isProfile: isProfile,
              buttonAction: buttonAction,
            ),
          ],
        ),
      ),
    );
  }
}

class _ProfileAvatar extends StatelessWidget {
  final String imageUrl;

  const _ProfileAvatar({required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    if (imageUrl.isNotEmpty) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: SizedBox(
          width: 61,
          height: 61,
          child: Image.network(
            imageUrl,
            fit: BoxFit.cover,
          ),
        ),
      );
    }

    return Container(
      width: 61,
      height: 61,
      decoration: const BoxDecoration(
        color: Colors.grey,
        shape: BoxShape.circle,
      ),
      child: const Icon(Icons.person, color: Colors.white),
    );
  }
}

class _ProfileInfo extends StatelessWidget {
  final String name;
  final String id;
  final bool isProfile;

  const _ProfileInfo({
    required this.name,
    required this.id,
    required this.isProfile,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: isProfile ? 200 : 120,
          child: Text(
            name,
            style: const TextStyle(fontSize: 20),
          ),
        ),
        SizedBox(
          width: isProfile ? 200 : 120,
          child: Text(
            'ID: $id',
            style: const TextStyle(
              color: Colors.grey,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
      ],
    );
  }
}

class _TrailingWidget extends StatelessWidget {
  final bool isProfile;
  final VoidCallback? buttonAction;

  const _TrailingWidget({
    required this.isProfile,
    this.buttonAction,
  });

  @override
  Widget build(BuildContext context) {
    if (isProfile) {
      return const Icon(
        Icons.arrow_forward_ios,
        size: 32,
        color: Colors.grey,
      );
    }

    return GestureDetector(
      onTap: buttonAction,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          'add_photo'.tr(),
          style: Theme.of(context).textTheme.labelMedium!.copyWith(
                fontWeight: FontWeight.w600,
              ),
        ),
      ),
    );
  }
}
