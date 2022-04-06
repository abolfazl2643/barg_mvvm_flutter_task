import 'package:barg_mvvm_task/view/bindings/login_bindings.dart';
import 'package:barg_mvvm_task/view/screens/login_screen.dart';
import 'package:barg_mvvm_task/view/screens/main_screen.dart';
import 'package:barg_mvvm_task/view/screens/profile_screen.dart';
import 'package:get/get_navigation/get_navigation.dart';

var routes = [
  GetPage(
    name: '/',
    page: () => const MainScreen(),
  ),
  GetPage(
    name: '/login',
    page: () => const LoginScreen(),
    binding: LoginBinding(),
  ),
  GetPage(
      name: '/profile',
      page: () => const ProfileScreen(),
      transition: Transition.zoom),
];
