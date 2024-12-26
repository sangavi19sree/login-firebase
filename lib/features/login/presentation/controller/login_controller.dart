import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:login_firebase/shared/app_routes.dart';

class LoginController extends GetxController {
  LoginController();

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
    if (mobileNumber.text.length == 10) {
      if (otp.text == "1234") {
        Get.toNamed(AppRoute.plugin);
      }
    }
  }
}
