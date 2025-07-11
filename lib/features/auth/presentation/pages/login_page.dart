import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
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
import '../bloc/login/login_bloc.dart';
import '../bloc/login/login_event.dart';
import '../bloc/login/login_state.dart';
import '../widgets/social_media_sign.dart';

@RoutePage()
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<LoginBloc, LoginState>(
          listenWhen: (p, c) => p.isLoading != c.isLoading,
          listener: (context, state) {
            if (state.isLoading) {
              LoadingScreen().show(context: context);
            } else {
              LoadingScreen().hide();
            }
          },
        ),
        BlocListener<LoginBloc, LoginState>(
          listenWhen: (previous, current) =>
              previous.singleTimeEvent != current.singleTimeEvent &&
              current.singleTimeEvent != null,
          listener: (context, state) {
            state.singleTimeEvent?.when(
              navigateToHome: () =>
                  context.router.replaceAll([const HomeNavBarRoute()]),
              showErrorDialog: (message) => CustomDialog.failure(
                title: 'error'.tr(),
                subtitle: message,
              ).show(context),
            );
          },
        ),
      ],
      child: Scaffold(
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 39.w),
          child: Column(
            children: [
              SizedBox(height: 260.h),
              const _WelcomeTexts(),
              SizedBox(height: 40.h),
              _LoginForm(formKey: _formKey),
              SizedBox(height: 29.h),
              const _ForgotPasswordButton(),
              SizedBox(height: 24.h),
              _LoginButton(formKey: _formKey),
              SizedBox(height: 36.h),
              const SocialMediaSign(),
              SizedBox(height: 32.h),
              const _RegisterPrompt(),
            ],
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
          "hello".tr(),
          style: Theme.of(context).textTheme.titleSmall,
          textAlign: TextAlign.center,
        ),
        Padding(
          padding: EdgeInsets.only(left: 44.w, right: 44.w, top: 8.h),
          child: Text(
            "hello_underline".tr(),
            style: Theme.of(context).textTheme.labelMedium,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}

class _LoginForm extends StatelessWidget {
  final GlobalKey<FormState> formKey;

  const _LoginForm({required this.formKey});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: AutovalidateMode.always,
      child: Column(
        children: [
          const _EmailInput(),
          SizedBox(height: 13.h),
          const _PasswordInput(),
        ],
      ),
    );
  }
}

class _EmailInput extends StatelessWidget {
  const _EmailInput();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (p, c) =>
          p.email != c.email ||
          p.validationErrorVisibility != c.validationErrorVisibility,
      builder: (context, state) {
        return CustomTextField(
          onChanged: (value) =>
              context.read<LoginBloc>().add(LoginEvent.emailChanged(value)),
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
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (p, c) =>
          p.password != c.password ||
          p.validationErrorVisibility != c.validationErrorVisibility,
      builder: (context, state) {
        return PasswordTextField(
          onChanged: (value) =>
              context.read<LoginBloc>().add(LoginEvent.passwordChanged(value)),
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

class _ForgotPasswordButton extends StatelessWidget {
  const _ForgotPasswordButton();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: TextButton(
        onPressed: () {
          // TODO: Implement forgot password functionality
        },
        child: Text(
          "forgot_password".tr(),
          style: Theme.of(context).textTheme.labelMedium?.copyWith(
                decoration: TextDecoration.underline,
              ),
        ),
      ),
    );
  }
}

class _LoginButton extends StatelessWidget {
  final GlobalKey<FormState> formKey;

  const _LoginButton({required this.formKey});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<LoginBloc, LoginState, bool>(
      selector: (state) => state.isLoading,
      builder: (context, isLoading) {
        return CustomFilledButton(
          onPressed: isLoading ? null : () => _handleLogin(context),
          child: Text(
            "login".tr(),
            style: bLabelMedium.copyWith(
              color: Theme.of(context).colorScheme.onPrimary,
            ),
          ),
        );
      },
    );
  }

  void _handleLogin(BuildContext context) {
    final loginBloc = context.read<LoginBloc>();
    final currentState = loginBloc.state;

    loginBloc.add(const LoginEvent.validationVisibilityChanged());
    loginBloc.add(LoginEvent.emailChanged(currentState.email));
    loginBloc.add(LoginEvent.passwordChanged(currentState.password));

    final isFormValid = formKey.currentState?.validate() ?? false;
    if (!isFormValid) {
      return;
    }
    loginBloc.add(const LoginEvent.loginSubmitted());
  }
}

class _RegisterPrompt extends StatelessWidget {
  const _RegisterPrompt();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "dont_have_account".tr(),
          style: Theme.of(context).textTheme.labelMedium?.copyWith(
                color: Theme.of(context).colorScheme.onPrimary.withAlpha(125),
              ),
        ),
        TextButton(
          onPressed: () => context.router.replace(const RegisterRoute()),
          child: Text(
            "register".tr(),
            style: Theme.of(context)
                .textTheme
                .labelSmall
                ?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
          ),
        )
      ],
    );
  }
}
