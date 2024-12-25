import 'package:get/get.dart';
import 'package:login_firebase/features/last_login/presentation/binding/last_login_binding.dart';
import 'package:login_firebase/features/last_login/presentation/pages/last_login_page.dart';
import 'package:login_firebase/features/login/presentation/binding/login_binding.dart';
import 'package:login_firebase/features/login/presentation/pages/login_page.dart';
import 'package:login_firebase/features/plugin/presentation/bindings/plugin_binding.dart';
import 'package:login_firebase/features/plugin/presentation/pages/plugin_page.dart';
import 'package:login_firebase/shared/app_routes.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
        name: AppRoute.login,
        page: () => const LoginPage(),
        binding: LoginBinding()),
    GetPage(
        name: AppRoute.plugin,
        page: () => const PluginPage(),
        binding: PluginBinding()),
    GetPage(
        name: AppRoute.lastLogin,
        page: () => const LastLoginPage(),
        binding: LastLoginBinding())
  ];
}
