import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/device_type.dart';

class FooterFirstColumn extends StatelessWidget {
     final String deviceType;
  const FooterFirstColumn({
    super.key, required this.deviceType,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.all(10),
      width:deviceType == DeviceType.desktop ? 70.w :deviceType == DeviceType.mobile? 1.sw: deviceType == DeviceType.tablet?0.4.sw : 0.4.sw,
      // decoration: BoxDecoration(border: Border.all()),
      margin: deviceType == DeviceType.mobile ? EdgeInsets.symmetric(horizontal: 10.h):EdgeInsets.zero,
      child: Column(
        // crossAxisAlignment:deviceType == DeviceType.mobile?CrossAxisAlignment.center: CrossAxisAlignment.start,
        crossAxisAlignment:CrossAxisAlignment.start ,
        children: [
        Container(
        constraints: BoxConstraints(maxWidth: 188.w),
        // width: 50.w,
        child: Image(image: AssetImage('assets/images/footerlogo.png'),fit: BoxFit.contain,),
    
      ),
                SizedBox(height: 10.h,),
    
      Text('Our company leads the industry in wealth management. We provide\nindependent RIA and broker services that are powered by over 20 years of\nindustry experience.',style: TextStyle(
        color: Colors.grey,
        fontWeight: FontWeight.w200,
        fontSize: 14.sp,
letterSpacing: 2
      ),
      // textAlign: deviceType == DeviceType.mobile ? TextAlign.center:TextAlign.left,
      textAlign: TextAlign.start,
      ),
     SizedBox(height: 20.h,),
        Wrap(
          // alignment: WrapAlignment.center,
          children: [
            Text('Free Consultation',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w900,fontSize:22.sp ),),
            SizedBox(width: 8.w,),
         
            InkWell(
              onTap: (){},
              child: Icon(Icons.arrow_forward_ios,color: Color(0xffca970b),))
          ],
        ),
          SizedBox(height: 20.h,),
      ],),
    );
  }
}
