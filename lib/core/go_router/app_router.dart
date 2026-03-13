import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:park_lion/core/utils/constants/const_router_app.dart';
import 'package:park_lion/features/auth/login/presentation/logic/change_icon_login/change_icon_login_cubit.dart';
import 'package:park_lion/features/auth/login/presentation/views/login_view.dart';
import 'package:park_lion/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:park_lion/features/splash/presentation/logic/goToPage/go_to_page_cubit.dart';
import 'package:park_lion/features/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: ConstRouterApp.idSplashView,
        builder: (context, state) => BlocProvider(
          create: (context) => GoToPageCubit()..goToPage(),
          child: SplashView(),
        ),
      ),
      GoRoute(
        path: ConstRouterApp.idOnboardingView,
        builder: (context, state) => OnboardingView(),
      ),
      GoRoute(
        path: ConstRouterApp.idLoginView,
        builder: (context, state) => BlocProvider(
          create: (context) => ChangeIconLoginCubit(),
          child: LoginView(),
        ),
      ),
    ],
  );
}
