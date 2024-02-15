enum AppRoutes {
  onBoarding,
  login,
  register,
  main,
  womanProducts,
}

extension AppRoutesExtension on AppRoutes {
  String get path {
    switch (this) {
      case AppRoutes.onBoarding:
        return '/on-boarding';
      case AppRoutes.login:
        return '/login';
      case AppRoutes.register:
        return '/register';
      case AppRoutes.main:
        return '/main';
      case AppRoutes.womanProducts:
        return '/woman-products';
      default:
        return '/on-boarding';
    }
  }
}
