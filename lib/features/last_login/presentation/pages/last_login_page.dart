import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:login_firebase/features/last_login/presentation/controller/last_login_controller.dart';
import 'package:login_firebase/shared/app_assets.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class LastLoginPage extends GetView<LastLoginController> {
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
                      color: controller.test.value == true
                          ? Color(0xFF2E2E2E)
                          : Color(0xFF2E2E2E),
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
                                  Container(),
                                  Container()
                                ]))
                              ])))))),
          Positioned(
              top: -6.h,
              right: -2.w,
              child: InkWell(
                onTap: () => controller.logout,
                child: CircleAvatar(
                    radius: 35.sp,
                    backgroundColor: Colors.white10,
                    child: Container(
                      padding: EdgeInsets.only(top: 30.sp),
                      child: Text("Logout",
                          style:
                              TextStyle(color: Colors.white, fontSize: 17.sp)),
                    )),
              )),
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
    return FutureBuilder<QuerySnapshot>(
      future: controller.getLastLoginData(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        }
        if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
          return Center(child: Text('No Login Data available'));
        }
        // snapshot.data?.docs.forEach((element) {
        //   print(element.data());
        // });
        final documents = snapshot.data!.docs;

        return ListView.builder(
            itemCount: documents.length,
            itemBuilder: (context, index) {
              final data = documents[index].data() as Map<String, dynamic>;

              return Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.sp),
                        color: Colors.white24),
                    padding: EdgeInsets.all(10.sp),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                    "Date: ${DateFormat('dd-MMM-yyyy ').format(DateTime.parse(data['last_login_time']))}",
                                    style: TextStyle(color: Colors.white)),
                                Text(
                                    "Time: ${DateFormat('hh:mm:ssa').format(DateTime.parse(data['last_login_time']))}",
                                    style: TextStyle(color: Colors.white)),
                                Text("Number: ${data['qr_number']}",
                                    style: TextStyle(color: Colors.white)),
                                Text('Chennai',
                                    style: TextStyle(color: Colors.white)),
                              ],
                            ),
                          ),
                          Container(
                              decoration: BoxDecoration(
                                  color: Colors.white54,
                                  borderRadius: BorderRadius.circular(15.sp)),
                              width: 40.sp,
                              height: 40.sp,
                              child: SvgPicture.asset(AppAssets.qrImage,
                                  fit: BoxFit.cover)),
                        ]),
                  ),
                  SizedBox(
                    height: 10.sp,
                  )
                ],
              );
            });
      },
    );
  }
}
