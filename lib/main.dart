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
      initialRoute: '/login-screen',
      theme: ThemeData(),
      getPages: routes,
    );
  }
}
