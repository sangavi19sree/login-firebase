import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  LoginController();

  TextEditingController mobileNumber = TextEditingController();
  TextEditingController otp = TextEditingController();

  sendOTP() async {
    if (mobileNumber.text.length == 10) {
      await FirebaseAuth.instance.verifyPhoneNumber(
        phoneNumber: '+91${mobileNumber.text}',
        verificationCompleted: (PhoneAuthCredential credential) {},
        verificationFailed: (FirebaseAuthException e) {
          print(e);
        },
        codeSent: (String verificationId, int? resendToken) {},
        codeAutoRetrievalTimeout: (String verificationId) {},
      );
    }
  }
}
