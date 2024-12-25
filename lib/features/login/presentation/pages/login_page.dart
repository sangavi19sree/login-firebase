import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:login_firebase/features/login/presentation/controller/login_controller.dart';
import 'package:login_firebase/features/login/presentation/widgets/custom_textfield.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
              height: double.infinity,
              width: double.infinity,
              color: Color(0xFF35215F),
              child: Padding(
                padding: EdgeInsets.only(top: 15.h),
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20.sp),
                            topLeft: Radius.circular(20.sp))),
                    child: Column(spacing: 1.h, children: [
                      SizedBox(height: 20.h),
                      CustomTextfield(
                          label: "Phone Number",
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly
                          ]),
                      CustomTextfield(
                        label: "OTP",
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.phone,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 2.h, horizontal: 16),
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                              width: double.infinity,
                              padding: EdgeInsets.symmetric(
                                  vertical: 15.sp, horizontal: 15.sp),
                              decoration: BoxDecoration(
                                  color: Color(0xff30313C),
                                  borderRadius: BorderRadius.circular(10.sp)),
                              child: Center(
                                  child: Text("Login",
                                      style: TextStyle(color: Colors.white)))),
                        ),
                      )
                    ])),
              )),
          Positioned(
            top: 13.h,
            left: 40.w,
            child: Container(
                padding:
                    EdgeInsets.symmetric(vertical: 10.sp, horizontal: 15.sp),
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10.sp)),
                child: Text("LOGIN",
                    style: TextStyle(color: Colors.white, fontSize: 18.sp))),
          ),
        ],
      ),
    );
  }
}
