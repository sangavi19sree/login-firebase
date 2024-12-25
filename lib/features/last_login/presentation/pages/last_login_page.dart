import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_firebase/shared/app_assets.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class LastLoginPage extends StatelessWidget {
  const LastLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: Align(
          alignment: Alignment.bottomCenter,
          child: InkWell(
              onTap: () {},
              child: Container(
                  height: 8.h,
                  width: 80.w,
                  decoration: BoxDecoration(
                      color: Color(0xFF2E2E2E),
                      borderRadius: BorderRadius.circular(15.sp)),
                  child: Center(
                      child: Text("SAVE",
                          style: TextStyle(color: Colors.white))))),
        ),
        body: Stack(children: [
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
                      child: Padding(
                          padding:
                              EdgeInsets.only(top: 4.h, right: 3.w, left: 3.w),
                          child: DefaultTabController(
                              length: 3,
                              child: Column(children: [
                                TabBar(
                                  dividerColor: Colors.transparent,
                                  indicatorColor: Colors.white,
                                  labelColor: Colors.white,
                                  unselectedLabelColor: Colors.grey,
                                  tabs: [
                                    Tab(text: "Today"),
                                    Tab(text: "Yesterday"),
                                    Tab(text: "Other"),
                                  ],
                                ),
                                Expanded(
                                    child: TabBarView(children: [
                                  todayLogin(),
                                  todayLogin(),
                                  todayLogin(),
                                ]))
                              ])))))),
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
                      EdgeInsets.symmetric(vertical: 10.sp, horizontal: 15.sp),
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10.sp)),
                  child: Center(
                    child: Text("LAST LOGIN",
                        style: TextStyle(color: Colors.white, fontSize: 18.sp)),
                  ))),
        ]));
  }

  Widget todayLogin() {
    return Padding(
        padding: EdgeInsets.only(top: 3.h),
        child: Stack(children: [
          Positioned(
              top: 1.h,
              child: Column(spacing: 4.h, children: [
                Container(
                    width: 100.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.sp),
                        color: Color(0xFF2E2E2E)),
                    padding: EdgeInsets.all(15.sp),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("2.55PM", style: TextStyle(color: Colors.white)),
                          Text("IP: 123.123.133",
                              style: TextStyle(color: Colors.white)),
                          Text("Chennai", style: TextStyle(color: Colors.white))
                        ]))
              ])),
          Positioned(
              right: 0.w,
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white54,
                      borderRadius: BorderRadius.circular(15.sp)),
                  width: 40.sp,
                  height: 40.sp,
                  child:
                      SvgPicture.asset(AppAssets.qrImage, fit: BoxFit.cover))),
        ]));
  }
}
