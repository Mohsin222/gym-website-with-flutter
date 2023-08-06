import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:website1/utils/device_type.dart';

import 'custom_footer_heading.dart';

class FooterColumn3 extends StatelessWidget {
   final String deviceType;
  const FooterColumn3({
    super.key, required this.deviceType,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
     padding: EdgeInsets.all(10),
    //  width:100.w,
           width:deviceType == DeviceType.desktop ? 100.w :deviceType == DeviceType.mobile?1.sw: 1.sw,
     // color: Colors.red,
    child: Column(
     crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 5.h,),
           
     CustomFooterHeading(text: 'QUICK LINKS',),
     
       SizedBox(height: 10.h,),
     Wrap(
      children: [
        Container(
          width:deviceType == DeviceType.desktop ? 50.w :deviceType == DeviceType.mobile?0.5.sw:deviceType == DeviceType.tablet?0.5.sw: 0.5.sw,
          child:   Column(
                  mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
         children: [
   _customListTile(title: 'About Us', onpress: (){}),
       SizedBox(height: 10.h,),
          _customListTile(title: 'About Us', onpress: (){}),
       SizedBox(height: 10.h,),
          _customListTile(title: 'About Us', onpress: (){}),
       SizedBox(height: 10.h,),
          _customListTile(title: 'About Us', onpress: (){}),
       SizedBox(height: 10.h,),
       
         ],
       ),),
        Container(
           width:deviceType == DeviceType.desktop ? 50.w :deviceType == DeviceType.mobile?0.5.sw:deviceType == DeviceType.desktop?100.sw: 0.5.sw,
          child:   Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
         children: [
        _customListTile(title: 'About Us', onpress: (){}),
       SizedBox(height: 10.h,),
    _customListTile(title: 'About Us', onpress: (){}),
       SizedBox(height: 10.h,),
          _customListTile(title: 'About Us', onpress: (){}),
       SizedBox(height: 10.h,),
         ],
       ),),
      ],
     ),
   
             SizedBox(height: 10.h,),
        
         SizedBox(height: 10.h,),
     
      
          ],
    ),
    );
  }

  _customListTile({required String title, required VoidCallback onpress}){
    return        ListTile(
      onTap: onpress,
    leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios,color: Color(0xffca970b)),
    
    
    ),
    title: Text(title,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w200,fontSize: 12.sp)),
   );
  }
}

