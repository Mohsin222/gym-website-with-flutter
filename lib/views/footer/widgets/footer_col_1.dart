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
      padding: EdgeInsets.all(10),
      width:deviceType == DeviceType.desktop ? 80.w :deviceType == DeviceType.mobile?1.sw: 0.4.sw,
      decoration: BoxDecoration(border: Border.all()),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Container(
        constraints: BoxConstraints(maxWidth: 188.w),
        width: 50.w,
        child: Image(image: AssetImage('assets/images/footerlogo.png'),fit: BoxFit.contain,),
    
      ),
                SizedBox(height: 10.h,),
    
      Container(child: Text('Our company leads the industry in wealth management. We provide\nindependent RIA and broker services that are powered by over 20 years of\nindustry experience.',style: TextStyle(
        color: Colors.grey,
        fontWeight: FontWeight.w200,
        fontSize: 14.sp,
letterSpacing: 2
      ),
      ),),
        SizedBox(height: 10.h,),
        Wrap(
          children: [
            Text('Free Consultation',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w900,fontSize:22.sp ),),
            SizedBox(width: 4.w,),
            IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios,color: Color(0xffca970b),))
          ],
        ),
          SizedBox(height: 20.h,),
      ],),
    );
  }
}
