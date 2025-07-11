// lib/features/auth/presentation/pages/auth_wrapper_page.dart
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_case/core/injections/locator.dart';
import 'package:test_case/features/auth/presentation/bloc/login/login_bloc.dart';
import 'package:test_case/features/auth/presentation/bloc/signup/signup_bloc.dart';

@RoutePage()
class AuthWrapperPage extends StatelessWidget {
  const AuthWrapperPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt<LoginBloc>()),
        BlocProvider(create: (_) => getIt<SignupBloc>()),
      ],
      child: const AutoRouter(),
    );
  }
}
