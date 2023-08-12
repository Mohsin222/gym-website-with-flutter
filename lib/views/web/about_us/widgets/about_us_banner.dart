import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AboutUsBanner extends StatelessWidget {
  const AboutUsBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 226, 210, 210),
      height: 236.h,
      child: Center(child: Text('About US',
      style: TextStyle(fontSize: 40.sp,fontWeight: FontWeight.bold,letterSpacing: 2,
      color: Colors.white
      ),
      ),),
    );
  }
}