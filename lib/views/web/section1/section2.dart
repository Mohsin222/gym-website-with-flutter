import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:website1/utils/device_type.dart';

import '../../../widgets/progress_bar_widget.dart';

class Section2 extends StatelessWidget {
    final String deviceType;
  const Section2({super.key, required this.deviceType});

  @override
  Widget build(BuildContext context) {
    return  Container(
      // height: 0.9.sh,
      width: 1.sw,
      padding: deviceType ==DeviceType.desktop ? EdgeInsets.symmetric(horizontal: 70,vertical: 70) :deviceType== DeviceType.tablet ? EdgeInsets.symmetric(horizontal: 50,vertical: 70):EdgeInsets.symmetric(horizontal: 100,vertical: 70),
      decoration: BoxDecoration(
        border: Border.all(),
           color: Colors.white,
      ),
   
      child: Wrap(
        alignment: WrapAlignment.center,
  spacing: 40.w,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
                Container(
                          width:deviceType==DeviceType.desktop? 0.3.sw :1.sw,
                          padding: EdgeInsets.symmetric(vertical: 35),
                           decoration: BoxDecoration(
                   
                           ),
                           child: Column(
                          // mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment:deviceType ==DeviceType.desktop ?   CrossAxisAlignment.start: CrossAxisAlignment.center,
                            children: [
                Text('About Us',
                style: TextStyle(
                  fontSize: 20.sp,
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
                
                height: 1.5.sp,
                fontSize: 16.sp
                ),
                  textAlign: deviceType ==DeviceType.desktop ?TextAlign.justify:TextAlign.center,
                ),
                
                SizedBox(height: 20.h,),
                ProgressBarWidget(),
                     SizedBox(height: 10.h,),
                ProgressBarWidget(),
                     SizedBox(height: 10.h,),
                ProgressBarWidget(),
                     SizedBox(height: 10.h,),
                      ProgressBarWidget(),
                     SizedBox(height: 10.h,),
                      ProgressBarWidget(),
                     SizedBox(height: 10.h,),
                        
                            ],
                           ),
                
                        ),
          //   SizedBox(
          //   width: 0.1.sw,
          // ),
          FittedBox(
            child: Container(
          //  padding: EdgeInsets.symmetric(vertical: 60,horizontal: 20),
                    padding: EdgeInsets.symmetric(vertical: 35),
              decoration: BoxDecoration(border: Border.all()),
                   width:deviceType==DeviceType.desktop? 0.4.sw :1.sw,
              //  decoration: BoxDecoration(
              //     image: DecorationImage(image: NetworkImage('https://images.unsplash.com/photo-1605296867304-46d5465a13f1?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fGd5bXxlbnwwfDB8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60'),fit: BoxFit.fill,
              //     filterQuality: FilterQuality.high
                  
              //     ),
              //  ),
              child: Image(image: NetworkImage('https://images.unsplash.com/photo-1604480133080-602261a680df?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80'),fit: BoxFit.fill,width: 1.sw,),
            
            ),
          ),
        
        ],
      ),
    );
  }
}