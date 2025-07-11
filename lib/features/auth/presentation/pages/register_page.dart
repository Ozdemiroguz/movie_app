import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_case/core/models/validation_error_visibility/validation_error_visibility.dart';

import '../../../../common/loading_overlay.dart';
import '../../../../constants/text_styles.dart';
import '../../../../custom/custom_dialog.dart';
import '../../../../custom/custom_filled_button.dart';
import '../../../../custom/custom_text_field.dart';
import '../../../../custom/password_text_field.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../router/router.dart';
import '../bloc/signup/signup_bloc.dart';
import '../bloc/signup/signup_event.dart';
import '../bloc/signup/signup_state.dart';
import '../widgets/social_media_sign.dart';

@RoutePage()
class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<SignupBloc, SignupState>(
          listenWhen: (p, c) => p.isLoading != c.isLoading,
          listener: (context, state) {
            if (state.isLoading) {
              LoadingScreen().show(context: context);
            } else {
              LoadingScreen().hide();
            }
          },
        ),
        BlocListener<SignupBloc, SignupState>(
          listenWhen: (p, c) => c.singleTimeEvent != null,
          listener: (context, state) {
            state.singleTimeEvent?.when(
              navigateToProfileUpdate: () => AutoRouter.of(context)
                  .pushAndPopUntil(
                      ProfileImageUpdateRoute(isSetupAccount: true),
                      predicate: (route) => false),
              showErrorDialog: (message) => CustomDialog.failure(
                title: 'error'.tr(),
                subtitle: message.tr(),
              ).show(context),
            );
          },
        ),
      ],
      child: Scaffold(
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 45.w),
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 100.h),
                const _WelcomeTexts(),
                SizedBox(height: 40.h),
                _RegisterForm(formKey: _formKey),
                SizedBox(height: 36.h),
                const SocialMediaSign(),
                SizedBox(height: 32.h),
                const _AlreadyHaveAccount(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _WelcomeTexts extends StatelessWidget {
  const _WelcomeTexts();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'welcome'.tr(),
          style: Theme.of(context).textTheme.titleSmall,
          textAlign: TextAlign.center,
        ),
        Padding(
          padding: EdgeInsets.only(left: 40.w, right: 40.w, top: 8.h),
          child: Text(
            'welcome_underline'.tr(),
            style: Theme.of(context).textTheme.labelMedium,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}

class _RegisterForm extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  const _RegisterForm({required this.formKey});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: AutovalidateMode.always,
      child: Column(
        children: [
          const _NameInput(),
          SizedBox(height: 20.h),
          const _EmailInput(),
          SizedBox(height: 20.h),
          const _PasswordInput(),
          SizedBox(height: 20.h),
          const _PasswordRepeatInput(),
          SizedBox(height: 20.h),
          const _AgreementText(),
          SizedBox(height: 38.h),
          _SignUpButton(formKey: formKey),
        ],
      ),
    );
  }
}

class _NameInput extends StatelessWidget {
  const _NameInput();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignupBloc, SignupState>(
      buildWhen: (p, c) =>
          p.name != c.name ||
          p.validationErrorVisibility != c.validationErrorVisibility,
      builder: (context, state) {
        return CustomTextField(
          onChanged: (value) =>
              context.read<SignupBloc>().add(SignupEvent.nameChanged(value)),
          hintText: 'name_surname'.tr(),
          prefixIcon: Assets.icons.addUser.svg(width: 18.w, height: 18.h),
          validator: (_) => state.validationErrorVisibility.when(
            show: () => state.name.isEmpty ? 'name_error'.tr() : null,
            hide: () => null,
          ),
        );
      },
    );
  }
}

class _EmailInput extends StatelessWidget {
  const _EmailInput();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignupBloc, SignupState>(
      buildWhen: (p, c) =>
          p.email != c.email ||
          p.validationErrorVisibility != c.validationErrorVisibility,
      builder: (context, state) {
        return CustomTextField(
          onChanged: (value) =>
              context.read<SignupBloc>().add(SignupEvent.emailChanged(value)),
          validator: (_) => state.validationErrorVisibility.when(
            show: () => state.emailFailure.toNullable()?.message,
            hide: () => null,
          ),
          hintText: 'email'.tr(),
          prefixIcon: Assets.icons.message.svg(width: 18.w, height: 18.h),
        );
      },
    );
  }
}

class _PasswordInput extends StatelessWidget {
  const _PasswordInput();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignupBloc, SignupState>(
      buildWhen: (p, c) =>
          p.password != c.password ||
          p.validationErrorVisibility != c.validationErrorVisibility,
      builder: (context, state) {
        return PasswordTextField(
          onChanged: (value) => context
              .read<SignupBloc>()
              .add(SignupEvent.passwordChanged(value)),
          validator: (_) => state.validationErrorVisibility.when(
            show: () => state.passwordFailure.toNullable()?.message,
            hide: () => null,
          ),
          hintText: 'password'.tr(),
          prefixIcon: Assets.icons.unlock.svg(width: 18.w, height: 18.h),
        );
      },
    );
  }
}

class _PasswordRepeatInput extends StatelessWidget {
  const _PasswordRepeatInput();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignupBloc, SignupState>(
      buildWhen: (p, c) =>
          p.confirmPassword != c.confirmPassword ||
          p.validationErrorVisibility != c.validationErrorVisibility,
      builder: (context, state) {
        return PasswordTextField(
          onChanged: (value) => context
              .read<SignupBloc>()
              .add(SignupEvent.confirmPasswordChanged(value)),
          validator: (_) => state.validationErrorVisibility.when(
            show: () => state.confirmPasswordFailure.toNullable()?.message,
            hide: () => null,
          ),
          hintText: 'password_confirm'.tr(),
          prefixIcon: Assets.icons.unlock.svg(width: 18.w, height: 18.h),
        );
      },
    );
  }
}

class _AgreementText extends StatelessWidget {
  const _AgreementText();

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: "agreement1".tr(),
        style: Theme.of(context).textTheme.labelSmall?.copyWith(
            color: Theme.of(context).colorScheme.onPrimary.withAlpha(125)),
        children: [
          TextSpan(
            text: "agreement2".tr(),
            style: Theme.of(context)
                .textTheme
                .labelSmall
                ?.copyWith(decoration: TextDecoration.underline),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                // TODO: Navigate to user agreement page
              },
          ),
          TextSpan(
            text: " ${"and".tr()} ",
            style: Theme.of(context).textTheme.labelSmall?.copyWith(
                color: Theme.of(context).colorScheme.onPrimary.withAlpha(125)),
          ),
          TextSpan(
            text: "agreement3".tr(),
            style: Theme.of(context)
                .textTheme
                .labelSmall
                ?.copyWith(decoration: TextDecoration.underline),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                // TODO: Navigate to privacy policy page
              },
          ),
        ],
      ),
    );
  }
}

class _SignUpButton extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  const _SignUpButton({required this.formKey});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<SignupBloc, SignupState, bool>(
      selector: (state) => state.isLoading,
      builder: (context, isLoading) {
        return CustomFilledButton(
          onPressed: isLoading ? null : () => _handleSignUp(context),
          child: Text(
            'register'.tr(),
            style: bLabelMedium.copyWith(
              color: Theme.of(context).colorScheme.onPrimary,
            ),
          ),
        );
      },
    );
  }

  void _handleSignUp(BuildContext context) {
    final isFormValid = formKey.currentState?.validate() ?? false;
    if (!isFormValid) {
      context
          .read<SignupBloc>()
          .add(const SignupEvent.validationVisibilityChanged());
      return;
    }
    context.read<SignupBloc>().add(const SignupEvent.signupSubmitted());
  }
}

class _AlreadyHaveAccount extends StatelessWidget {
  const _AlreadyHaveAccount();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'already_have_account'.tr(),
          style: Theme.of(context).textTheme.labelSmall?.copyWith(
                color: Theme.of(context).colorScheme.onPrimary.withAlpha(125),
              ),
        ),
        TextButton(
          onPressed: () => context.router.replace(const LoginRoute()),
          child: Text(
            'login'.tr(),
            style: Theme.of(context).textTheme.labelSmall,
          ),
        ),
      ],
    );
  }
}
