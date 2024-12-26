import 'package:get/get.dart';
import 'package:login_firebase/features/plugin/presentation/controller/plugin_controller.dart';

class PluginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PluginController>(() => PluginController(Get.find()));
  }
}
