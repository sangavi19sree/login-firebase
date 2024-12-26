import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:login_firebase/core/shared_pref_manager.dart';
import 'package:login_firebase/shared/app_routes.dart';

class LoginController extends GetxController {
  final SharedPrefManager sharedPrefManager;
  LoginController(this.sharedPrefManager);

  TextEditingController mobileNumber = TextEditingController();
  TextEditingController otp = TextEditingController();

  // sendOTP() async {
  //   if (mobileNumber.text.length == 10) {
  //     await FirebaseAuth.instance.verifyPhoneNumber(
  //       phoneNumber: '+91${mobileNumber.text}',
  //       verificationCompleted: (PhoneAuthCredential credential) {},
  //       verificationFailed: (FirebaseAuthException e) {
  //         print(e);
  //       },
  //       codeSent: (String verificationId, int? resendToken) {},
  //       codeAutoRetrievalTimeout: (String verificationId) {},
  //     );
  //   }
  // }

  void login() {
    if (mobileNumber.text.length == 10 && mobileNumber.text == "8072616729") {
      if (otp.text == "1234") {
        sharedPrefManager.setMobileNumber(mobileNumber.text);
        Get.toNamed(AppRoute.plugin);
      }
    }
  }
}
