import 'package:flutter_clone_zara_app/app/config/routers/app_routes.dart';
import 'package:flutter_clone_zara_app/app/modules/authentication/pages/login_screen.dart';
import 'package:flutter_clone_zara_app/app/modules/authentication/pages/register_screen.dart';
import 'package:flutter_clone_zara_app/app/modules/main/pages/main_screen.dart';
import 'package:flutter_clone_zara_app/app/modules/menu/pages/woman_products_screen.dart';
import 'package:flutter_clone_zara_app/app/modules/onboarding/pages/on_boarding_screen.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static router() {
    return GoRouter(
      debugLogDiagnostics: true,
      initialLocation: "${AppRoutes.main.path}/${AppRoutes.womanProducts.name}",
      routes: [
        GoRoute(
          name: AppRoutes.onBoarding.name,
          path: AppRoutes.onBoarding.path,
          builder: (context, state) => const OnBoardingScreen(),
        ),
        GoRoute(
          name: AppRoutes.login.name,
          path: AppRoutes.login.path,
          builder: (context, state) => const LoginScreen(),
        ),
        GoRoute(
          name: AppRoutes.register.name,
          path: AppRoutes.register.path,
          builder: (context, state) => const RegisterScreen(),
        ),
        GoRoute(
          name: AppRoutes.main.name,
          path: AppRoutes.main.path,
          builder: (context, state) => const MainScreen(),
          routes: [
            GoRoute(
              name: AppRoutes.womanProducts.name,
              path: AppRoutes.womanProducts.name,
              builder: (context, state) => const WomanProductsScreen(),
            ),
          ],
        ),
      ],
    );
  }
}
