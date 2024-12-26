import 'package:get/get.dart';
import 'package:login_firebase/core/shared_pref_manager.dart';
import 'package:login_firebase/features/login/presentation/controller/login_controller.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() async {
    Get.putAsync<SharedPrefManager>(() async {
      final SharedPreferences sharedPreferences =
          await SharedPreferences.getInstance();

      return SharedPrefManager(sharedPreferences);
    }, permanent: true);

    Get.lazyPut<LoginController>(
      () => LoginController(Get.find()),
    );
  }
}
