import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:website1/utils/device_type.dart';
import 'package:website1/views/footer/widgets/custom_footer_heading.dart';

class FotterSecondColumn extends StatelessWidget {
       final String deviceType;
  const FotterSecondColumn({
    super.key, required this.deviceType,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
     padding: EdgeInsets.all(10),
    //  width:70.w,
          width:deviceType == DeviceType.desktop ? 70.w :deviceType == DeviceType.mobile?1.sw: 0.4.sw,
     // color: Colors.red,
    child: Column(
     crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 5.h,),
         
  CustomFooterHeading(text:'RECENT POSTS' ,),
  
       SizedBox(height: 10.h,),
             CustomFutterCard(),
             SizedBox(height: 10.h,),
             CustomFutterCard(),
         SizedBox(height: 10.h,),
             CustomFutterCard(),
      
          ],
    ),
    );
  }
}

class CustomFutterCard extends StatelessWidget {
  const CustomFutterCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
            children: [
     Container(
       padding: EdgeInsets.all(40),
    
       decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.r),
       image: DecorationImage(image:  AssetImage('assets/images/footerimg1.jpg'),fit: BoxFit.cover,
     
     
       ),
       
       ),
    
     ),
     SizedBox(width: 5.w,),
          Expanded(
            child: Column(
     crossAxisAlignment: CrossAxisAlignment.start,
     children:[
        Text('What’s the Right Asset Allocation For Investors?',
        maxLines: 2,
          style: TextStyle(color: Colors.white,
          fontSize: 14.sp,
          fontWeight: FontWeight.w500
          ),
          ),
          SizedBox(height: 3.h,),
    Text('Feb 4, 2018 /3 Comments',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w300)),
     ]
            ),
          )
            ]
    );
  }
}

