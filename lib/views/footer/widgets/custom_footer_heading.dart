import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomFooterHeading extends StatelessWidget {
  final String text;
  const CustomFooterHeading({
    super.key, required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize:23.sp ),);
  }
}