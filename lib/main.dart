import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yummy_spot/constants/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Yummy Spot',
      //theme: getApplicationThem(),
      theme: ThemeData(brightness: Brightness.light),
      darkTheme: ThemeData(brightness: Brightness.dark),
      themeMode: ThemeMode.system,
      onGenerateRoute: RouteGenerator.getRoute,
      initialRoute: Routes.landingRoute,
    );
  }
}
