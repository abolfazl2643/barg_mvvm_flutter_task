import 'package:get/get_navigation/get_navigation.dart';

import '../bindings/login_screen_bindings.dart';
import '../bindings/main_screen_bindings.dart';
import '../screens/login_screen.dart';
import '../screens/main_screen.dart';
import '../screens/profile_screen.dart';

var routes = [
  GetPage(
    name: '/',
    page: () => const MainScreen(),
    binding: MainScreenBinding(),
  ),
  GetPage(
    name: '/login',
    page: () => const LoginScreen(),
    binding: LoginScreenBinding(),
  ),
  GetPage(
      name: '/profile',
      page: () => const ProfileScreen(),
      transition: Transition.zoom),
];
