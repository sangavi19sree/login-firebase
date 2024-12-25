import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class QrNumberCard extends StatelessWidget {
  const QrNumberCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 25.h,
          left: 10.w,
          right: 10.w,
          child: Container(
            child: Column(
              spacing: 1.h,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("Generated Number",
                    style: TextStyle(color: Colors.white, fontSize: 20.sp)),
                Text("12313",
                    style: TextStyle(color: Colors.white, fontSize: 24.sp)),
                SizedBox(height: 1.h)
              ],
            ),
            height: 55.sp,
            width: 75.sp,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors: [
                    Color(0xFF2E2E2E),
                    Color(0xFF2E2E2E),
                    Color(0xFF321D5D),
                    Color(0xFF321D5D),
                    Color(0xFF321D5D),
                  ],
                ),
                borderRadius: BorderRadius.circular(15.sp)),
          ),
        ),
        Positioned(
          top: 10.h,
          left: 25.w,
          right: 25.w,
          child: Container(
              height: 55.sp,
              width: 55.sp,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(15.sp)),
              child: Text("")),
        ),
      ],
    );
  }
}
