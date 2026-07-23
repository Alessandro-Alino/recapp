import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recapp/config/secure_storage/app_secure_storage.dart';
import 'package:recapp/feature/ai/bloc/ai_bloc.dart';
import 'package:recapp/feature/select_file/bloc/select_file_bloc.dart';
import 'package:recapp/feature/secure_value/bloc/secure_value_bloc.dart';
import 'package:recapp/feature/secure_value/repo/secure_value_repo.dart';
import 'theme/cubit/app_theme_cubit.dart';
import 'theme/repo/app_theme_repo.dart';

class AppInjection extends StatelessWidget {
  const AppInjection({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        // App Shared Pref. Repo
        RepositoryProvider<AppThemeRepo>(create: (context) => AppThemeRepo()),
        // App Secure Storage
        RepositoryProvider<AppSecureStorage>(
          create: (context) => AppSecureStorage(),
        ),
        // Secure Value Repo
        RepositoryProvider<SecureValueRepo>(
          create: (context) =>
              SecureValueRepo(secureStorage: context.read<AppSecureStorage>()),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          // Theme Cubit
          BlocProvider<AppThemeCubit>(
            create: (context) =>
                AppThemeCubit(appThemeRepo: context.read<AppThemeRepo>())
                  ..getTheme(context),
          ),
          // Secure Value Bloc
          BlocProvider<SecureValueBloc>(
            create: (context) => SecureValueBloc(
              secureValueRepo: context.read<SecureValueRepo>(),
            ),
          ),
          // Ai Bloc
          BlocProvider<AiBloc>(
            // Read Supported Models when start.
            create: (context) => AiBloc(
              secureValueRepo: context.read<SecureValueRepo>(),
            )..readSupportedAIModels(),
          ),
          // Select File Bloc
          BlocProvider<SelectFileBloc>(create: (context) => SelectFileBloc()),
        ],
        child: child,
      ),
    );
  }
}
