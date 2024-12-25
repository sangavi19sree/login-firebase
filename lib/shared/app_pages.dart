import 'package:get/get.dart';
import 'package:login_firebase/features/login/presentation/binding/login_binding.dart';
import 'package:login_firebase/features/login/presentation/pages/login_page.dart';
import 'package:login_firebase/shared/app_routes.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
        name: AppRoute.login,
        page: () => const LoginPage(),
        binding: LoginBinding())
  ];
}
