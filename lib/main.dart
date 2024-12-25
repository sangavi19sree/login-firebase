import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_firebase/shared/app_pages.dart';
import 'package:login_firebase/shared/app_routes.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Login-firebase',
        home: const MyHomePage(title: 'login-firebase'));
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (ctx, orn, scrtyp) {
      return GetMaterialApp(
          navigatorKey: Get.key,
          initialRoute: AppRoute.login,
          getPages: AppPages.pages);
    });
  }
}
