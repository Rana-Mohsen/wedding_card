import 'package:go_router/go_router.dart';
import 'package:wedding_card/features/home/presentation/view/home_view.dart';
import 'package:wedding_card/features/home/presentation/view_model/card_data_cubit/card_data_cubit.dart';
import 'package:wedding_card/features/home/presentation/view_model/drawer_image_cubit/drawer_image_cubit.dart';
import 'package:wedding_card/features/splash/presentaion/view/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class AppRoutes {
  static const kHomeView = '/homeView';
  static final routes = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: kHomeView,
      builder: (context, state) => MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => DrawerImageCubit(),
          ),
          BlocProvider(
            create: (context) => CardDataCubit(),
          ),
        ],
        child: const HomeView(),
      ),
    ),
  ]);
}
