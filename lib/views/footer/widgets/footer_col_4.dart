import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:website1/utils/device_type.dart';

import 'custom_footer_heading.dart';

class FooterColumn4 extends StatelessWidget {
  const FooterColumn4({
    super.key,
    required this.deviceType,
  });

  final String deviceType;

  @override
  Widget build(BuildContext context) {
    return Container(
          padding: EdgeInsets.all(10),
        width:deviceType == DeviceType.desktop ? 50.w :deviceType == DeviceType.mobile?1.sw: 0.4.sw,        
        child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
          children: [
                SizedBox(height: 5.h,),
             CustomFooterHeading(text: 'CONTACT US',),
       SizedBox(height: 10.h,),
       _customListTile(icon: Icons.phone,title: '0123456789',onpress: (){}),
        SizedBox(height: 10.h,),
         _customListTile(icon: Icons.mail,title: 'demo@example.com',onpress: (){}),
        SizedBox(height: 10.h,),
         _customListTile(icon: Icons.location_on,title: 'Your address goes here',onpress: (){}),
        SizedBox(height: 10.h,),
          ],
        ),   
    );
  }
  _customListTile({required String title, required VoidCallback onpress, required IconData icon}){
    return        ListTile(
      onTap: onpress,
    leading: IconButton(onPressed: (){}, icon: Icon(icon,color: Color(0xffca970b)),
    
    
    ),
    title: Text(title,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w200,fontSize: 14.sp)),
   );
  }
}



