import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_firebase/features/login/presentation/binding/login_binding.dart';
import 'package:login_firebase/shared/app_pages.dart';
import 'package:login_firebase/shared/app_routes.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await LoginBinding().dependencies();

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
