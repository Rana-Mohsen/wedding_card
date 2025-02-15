import 'package:go_router/go_router.dart';
import 'package:wedding_card/core/utils/service_locator.dart';
import 'package:wedding_card/features/auth/data/repos/auth_repo_impl.dart';
import 'package:wedding_card/features/auth/domain/usecases/login_user_usecase.dart';
import 'package:wedding_card/features/auth/domain/usecases/register_user_usecase.dart';
import 'package:wedding_card/features/auth/presentation/view/login_view.dart';
import 'package:wedding_card/features/auth/presentation/view/register_view.dart';
import 'package:wedding_card/features/auth/presentation/view_model/blocs/auth_bloc.dart';
import 'package:wedding_card/features/home/presentation/view/home_view.dart';
import 'package:wedding_card/features/home/presentation/view_model/drawer_image_cubit/drawer_image_cubit.dart';
import 'package:wedding_card/features/info/presentation/view/info_view.dart';
import 'package:wedding_card/features/info/presentation/view/my_cards_view.dart';
import 'package:wedding_card/features/splash/presentaion/view/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class AppRoutes {
  static const kLoginView = '/loginView';
  static const kRegisterView = '/registerView';
  static const kHomeView = '/homeView';
  static const kInfoView = '/infoView';
  static const kMyCardsView = '/myCardsView';

  static final routes = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: kLoginView,
      builder: (context, state) => MultiBlocProvider(providers: [
        BlocProvider(
          create: (context) => AuthBloc(
            RegisterUserUsecase(getIt.get<AuthRepoImpl>()),
            LoginUserUsecase(getIt.get<AuthRepoImpl>()),
          ),
        )
      ], child: const LoginView()),
    ),
    GoRoute(
      path: kRegisterView,
      builder: (context, state) => MultiBlocProvider(providers: [
        BlocProvider(
          create: (context) => AuthBloc(
            RegisterUserUsecase(getIt.get<AuthRepoImpl>()),
            LoginUserUsecase(getIt.get<AuthRepoImpl>()),
          ),
        )
      ], child: const RegisterView()),
    ),
    GoRoute(
      path: kHomeView,
      builder: (context, state) => MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => DrawerImageCubit(),
          ),
        ],
        child: const HomeView(),
      ),
    ),
    GoRoute(
      path: kInfoView,
      builder: (context, state) => const InfoView(),
    ),
     GoRoute(
      path: kMyCardsView,
      builder: (context, state) => const MyCardsView(),
    ),
  ]);
}
