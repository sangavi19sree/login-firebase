import 'package:get/get.dart';
import 'package:login_firebase/core/shared_pref_manager.dart';
import 'package:login_firebase/shared/app_routes.dart';

class LastLoginController extends GetxController {
  final SharedPrefManager sharedPrefManager;

  LastLoginController(this.sharedPrefManager);

  void logout() {
    sharedPrefManager.clear();
    Get.offNamed(AppRoute.login);
  }
}
