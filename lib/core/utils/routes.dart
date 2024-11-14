import 'package:go_router/go_router.dart';
import 'package:wedding_card/features/home/presentation/view/home_view.dart';
import 'package:wedding_card/features/splash/presentaion/view/splash_view.dart';

abstract class AppRoutes {
  static const kHomeView = '/homeView';
   static final routes = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: kHomeView,
      builder: (context, state) => const HomeView(),
    ),
    
  ]);
  }