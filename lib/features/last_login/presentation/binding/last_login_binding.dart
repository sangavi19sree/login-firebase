import 'package:get/get.dart';
import 'package:login_firebase/features/last_login/presentation/controller/last_login_controller.dart';

class LastLoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LastLoginController>(
      () => LastLoginController(),
    );
  }
}
