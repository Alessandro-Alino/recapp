import 'package:auto_route/auto_route.dart';
import 'app_route.gr.dart';
import 'app_route_const.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => RouteType.adaptive();

  @override
  List<AutoRoute> get routes => [
    // Home Page
    AutoRoute(
      initial: true,
      path: AppRouteConst.homePage,
      page: HomeRoute.page,
    ),
    // AI ApiKey Page
    AutoRoute(
      path: AppRouteConst.aiApiKeyPage,
      page: AiApiKeyRoute.page,
    ),
  ];

  @override
  List<AutoRouteGuard> get guards => [
    // optionally add root guards here
  ];
}
