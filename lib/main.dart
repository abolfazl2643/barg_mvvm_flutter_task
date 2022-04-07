import 'package:barg_mvvm_task/view/routes/route_enum.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'view/routes/routes.dart';

Future<void> main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: getRouteName(Screen.login),
      theme: ThemeData(),
      getPages: routes,
    );
  }
}
