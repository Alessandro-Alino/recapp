import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'config/app_injection.dart';
import 'config/helpers/extensions.dart';
import 'config/l10n/generated/app_localizations.dart';
import 'config/route/app_route.dart';
import 'config/shared_prefs/app_shared_prefs.dart';
import 'config/theme/app_theme.dart';
import 'config/theme/cubit/app_theme_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppSharedPrefs().init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // App Router
    final appRouter = AppRouter();

    return AppInjection(
      child: BlocBuilder<AppThemeCubit, ThemeMode>(
        builder: (context, state) {
          return MaterialApp.router(
            themeMode: state,
            theme: AppTheme.lightTheme,
            darkTheme: AppTheme.darkTheme,
            scrollBehavior: const MaterialScrollBehavior().copyWith(
              dragDevices: {
                PointerDeviceKind.touch,
                PointerDeviceKind.mouse,
                PointerDeviceKind.trackpad,
                PointerDeviceKind.stylus,
              },
            ),
            routerConfig: appRouter.config(),
            onGenerateTitle: (context) => context.ltr.title_app,
            supportedLocales: AppLocalizations.supportedLocales,
            localizationsDelegates: AppLocalizations.localizationsDelegates,
          );
        },
      ),
    );
  }
}