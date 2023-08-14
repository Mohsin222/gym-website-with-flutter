import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBannerWithText extends StatelessWidget {
  final String text;
  const CustomBannerWithText({
    super.key, required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 8, 1, 1),
      height: 236.h,
      child: Center(child: Text(text,
      style: TextStyle(fontSize: 40.sp,fontWeight: FontWeight.bold,letterSpacing: 2,
      color: Colors.white
      ),
      ),),
    );
  }
}