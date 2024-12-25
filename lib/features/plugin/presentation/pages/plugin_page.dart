import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_firebase/features/plugin/presentation/controller/plugin_controller.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class PluginPage extends GetView<PluginController> {
  const PluginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
              height: double.infinity,
              width: double.infinity,
              color: Color(0xFF321D5D),
              child: Padding(
                  padding: EdgeInsets.only(top: 12.h),
                  child: Container(
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20.sp),
                              topLeft: Radius.circular(20.sp))),
                      child: Column(spacing: 3.h, children: [])))),
          Positioned(
              top: -6.h,
              right: -2.w,
              child: CircleAvatar(
                  radius: 35.sp,
                  backgroundColor: Colors.white10,
                  child: Container(
                    padding: EdgeInsets.only(top: 30.sp),
                    child: Text("Logout",
                        style: TextStyle(color: Colors.white, fontSize: 17.sp)),
                  ))),
          Positioned(
            top: 10.h,
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
