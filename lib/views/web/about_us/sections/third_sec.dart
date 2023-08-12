import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:website1/utils/device_type.dart';

class AboutUsThirdSection extends StatelessWidget {
     final String deviceType;
  const AboutUsThirdSection({super.key, required this.deviceType});

  @override
  Widget build(BuildContext context) {
    return Container(
          width: 1.sw,
padding: deviceType ==DeviceType.desktop ? EdgeInsets.symmetric(horizontal: 70,vertical: 50) :deviceType== DeviceType.tablet ? EdgeInsets.symmetric(horizontal: 50,vertical: 50):deviceType== DeviceType.mobile ?EdgeInsets.symmetric(horizontal: 15,vertical:50 ) :EdgeInsets.symmetric(horizontal: 100,vertical: 50),
    alignment: Alignment.center,
      // height: 1.sh,

               decoration: BoxDecoration(
        image: DecorationImage(image: NetworkImage('https://images.unsplash.com/photo-1567013127542-490d757e51fc?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80'),fit: BoxFit.cover,
        filterQuality: FilterQuality.high,
        colorFilter:ColorFilter.mode(Color.fromARGB(255, 9, 46, 78).withOpacity(0.9) ,BlendMode.modulate)
        
        ),
              // color: Colors.white,

             ), 
             child: Container(
              // margin: EdgeInsets.symmetric(horizontal: 69.h),
               child: Wrap(
                alignment: WrapAlignment.spaceBetween,
                crossAxisAlignment: WrapCrossAlignment.center,
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                    _customCard(deviceType: deviceType),  
                       _customCard(deviceType: deviceType),  
                          _customCard(deviceType: deviceType),  
                             _customCard(deviceType: deviceType),  
                ],
               ),
             ),
    );
  }

  _customCard({required String deviceType}){
    return     Container(
      padding: EdgeInsets.all(20),
      alignment: Alignment.center,
      width: deviceType == DeviceType.tablet ? 0.4.sw : deviceType == DeviceType.mobile ? 1.sw: 60.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
                     Icon(Icons.build_circle_outlined,color: Color(0xffca970b),
                         size: 50.sp,
                         ),
                         SizedBox(height: 5.h,),
                         Text('56',style: TextStyle(fontSize: 50.sp,fontWeight: FontWeight.bold,color: Colors.white),),
                             SizedBox(height: 5.h,),
                         Text('Years of Experience',style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.bold,color: Colors.white,letterSpacing: 2),
                         textAlign: TextAlign.center,
                         )
                           ],),
    );
  }
}