String getRouteName(Screen routeEnum) {
  switch (routeEnum) {
    case Screen.main:
      return '/main-screen';
    case Screen.login:
      return '/login-screen';
    case Screen.profile:
      return '/profile-screen';
  }
}

enum Screen {
  main,
  login,
  profile,
}
