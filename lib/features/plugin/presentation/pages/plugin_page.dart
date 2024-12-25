import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_firebase/features/plugin/presentation/controller/plugin_controller.dart';
import 'package:login_firebase/features/plugin/presentation/widgets/qr_number_card.dart';
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
                    child: QrNumberCard(),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20.sp),
                            topLeft: Radius.circular(20.sp))),
                  ))),
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
            left: 30.w,
            right: 30.w,
            child: Container(
                padding:
                    EdgeInsets.symmetric(vertical: 5.sp, horizontal: 20.sp),
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10.sp)),
                child: Center(
                  child: Text("PLUGIN",
                      style: TextStyle(color: Colors.white, fontSize: 20.sp)),
                )),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(
                          vertical: 15.sp, horizontal: 15.sp),
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(15.sp)),
                      child: Center(
                          child: Text("Last Login at Today",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 16.sp)))),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 16),
                  child: InkWell(
                      onTap: () {},
                      child: Container(
                          width: double.infinity,
                          padding: EdgeInsets.symmetric(
                              vertical: 15.sp, horizontal: 15.sp),
                          decoration: BoxDecoration(
                              color: Color(0xFF2E2E2E),
                              borderRadius: BorderRadius.circular(15.sp)),
                          child: Center(
                              child: Text("SAVE",
                                  style: TextStyle(color: Colors.white))))),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
