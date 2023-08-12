import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:website1/utils/device_type.dart';

class CustomFooterHeading extends StatelessWidget {
  final String deviceType;
  final String text;
  const CustomFooterHeading({
    super.key, required this.text, required this.deviceType,
  });

  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize:23.sp ),
    textAlign: deviceType ==DeviceType.mobile ?TextAlign.center:TextAlign.start,
    );
  }
}