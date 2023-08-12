import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/device_type.dart';
import '../../../../widgets/progress_bar_widget.dart';

class AboutUsSection extends StatelessWidget {
    final String deviceType;
  const AboutUsSection({super.key, required this.deviceType});

  @override
  Widget build(BuildContext context) {
    return  Container(

      // height: 0.9.sh,
      width: 1.sw,
padding: deviceType ==DeviceType.desktop ? EdgeInsets.symmetric(horizontal: 70,vertical: 70) :deviceType== DeviceType.tablet ? EdgeInsets.symmetric(horizontal: 50,vertical: 70):deviceType== DeviceType.mobile ?EdgeInsets.symmetric(horizontal: 15,vertical:70 ) :EdgeInsets.symmetric(horizontal: 100,vertical: 70),
     
     
  // padding: EdgeInsets.all(30),
      decoration: BoxDecoration(
        border: Border.all(),
           color: Color(0xfff2f3f8),
      ),
   
      child: Container(
        // margin: EdgeInsets.symmetric(horizontal: 69.h),   
        child: Wrap(
          alignment: WrapAlignment.center,
        spacing: 10.w,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
                  Container(
                    // decoration: BoxDecoration(border: Border.all()),
                            width:deviceType==DeviceType.desktop? 0.4.sw :1.sw,
                            padding: EdgeInsets.symmetric(vertical: 35),
                         
                             child: Column(
                            // mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment:deviceType ==DeviceType.desktop ?   CrossAxisAlignment.start: CrossAxisAlignment.center,
                              children: [
                  Text('About Us',
                  style: TextStyle(
                    fontSize: 30.sp,
                    fontWeight: FontWeight.w700,
      
                  ),
                  ),
                  SizedBox(height: 10.h,),
                  Text('industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type ',
                  style: TextStyle(color: Color(0xff868e96,
                  
                  ),
                  
                  height: 1.5.sp,
                  fontSize: 16.sp
                  ),
                  textAlign: deviceType ==DeviceType.desktop ?TextAlign.justify:TextAlign.center,
                  ),
                    SizedBox(height: 10.h,),
                  Text('industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type ',
                   
                    style: TextStyle(color: Color(0xff868e96,
                  
                  ),
                  
                  height: 1.2.sp,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w200
                  ),
                    textAlign: deviceType ==DeviceType.desktop ?TextAlign.justify:TextAlign.center,
                  ),
                  
             
                          
                              ],
                             ),
                  
                          ),
                           Container(
                                        padding:const EdgeInsets.symmetric(vertical: 35),
                               width:deviceType==DeviceType.desktop? 0.4.sw :1.sw,
                            child: Column(
                              children: [
                                     SizedBox(height: 20.h,),
              const    ProgressBarWidget(),
                       SizedBox(height: 10.h,),
             const     ProgressBarWidget(),
                       SizedBox(height: 10.h,),
             const     ProgressBarWidget(),
                       SizedBox(height: 10.h,),
               const         ProgressBarWidget(),
                       SizedBox(height: 10.h,),
                const        ProgressBarWidget(),
                       SizedBox(height: 10.h,),
                              ],
                            ),
                          )
                         
      
         
          
          ],
        ),
      ),
    );
  }
}