import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:website1/utils/hover_class.dart';

import '../utils/device_type.dart';

class custom_social_icons extends StatelessWidget {
  const custom_social_icons({
    super.key,
    required this.deviceType,
  });

  final String deviceType;

  @override
  Widget build(BuildContext context) {
    return HoverBuilder(builder: (isHover){
      return Container(
      decoration: BoxDecoration(
                    color:isHover? Colors.yellow: Color(0xff324454),
                    shape:BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(5.r)
      ),
      margin: EdgeInsets.all(6),
        
        // width: 5.w,
        // height: 40.h,
        padding: EdgeInsets.all(10),
        child: Icon(Icons.facebook_outlined,color: Colors.white,size:deviceType ==DeviceType.desktop ? 20.sp:12.sp,),
      );
    });
  }
}
