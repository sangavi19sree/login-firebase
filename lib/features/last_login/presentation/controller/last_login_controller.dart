import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:login_firebase/core/shared_pref_manager.dart';
import 'package:login_firebase/shared/app_routes.dart';

class LastLoginController extends GetxController {
  final SharedPrefManager sharedPrefManager;
  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  RxList lastLoginList = [].obs;

  LastLoginController(this.sharedPrefManager);

  RxBool test = true.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    getLastLoginData();

    super.onInit();
  }

  Future<QuerySnapshot> getLastLoginData() async {
    return await firestore.collection('qr_codes').get();
  }

  void logout() {
    sharedPrefManager.clear();
    Get.offNamed(AppRoute.login);
  }
}
