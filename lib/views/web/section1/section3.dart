import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/device_type.dart';

class Section3 extends StatelessWidget {
      final String deviceType;
  const Section3({super.key, required this.deviceType});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      // height: 1.sh,
      width: 1.sw,
               decoration: BoxDecoration(
        image: DecorationImage(image: NetworkImage('https://images.unsplash.com/photo-1518622358385-8ea7d0794bf6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80'),fit: BoxFit.fill,
        filterQuality: FilterQuality.high,
        colorFilter:ColorFilter.mode(Colors.blue.shade200.withOpacity(0.9) ,BlendMode.modulate)
        
        ),
              color: Colors.grey,
             ),

      child: Container(
        padding: deviceType== DeviceType.desktop ?EdgeInsets.symmetric(vertical: 35,horizontal: 30):EdgeInsets.symmetric(vertical: 0,horizontal: 0),
        width: 1.sw,
        child: Column(children: [
          Container(child: Text('Our Services',
              style: TextStyle(
                    fontSize: 25.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.white
                  ),
                  
          ),),
          SizedBox(height: 15.h,),
              Text('industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s\n, when an unknown printer took a galley of type and scrambled it to make a type ',
       style: TextStyle(color: Colors.grey),

              textAlign: TextAlign.center,
              ),
          SizedBox(height: 25.h,),
              Wrap(
                alignment : WrapAlignment.start,
                runSpacing: 20.w,
                spacing: 15.w,
                children: [
                  ThirdSectionCard(deviceType: deviceType,),
           
                        ThirdSectionCard(deviceType: deviceType,),
            
                        ThirdSectionCard(deviceType: deviceType,),
                          ThirdSectionCard(deviceType: deviceType,),
                            ThirdSectionCard(deviceType: deviceType,),
                              ThirdSectionCard(deviceType: deviceType,),
             
                ],
              ),
        ],),
      )
    );
  }
}

class ThirdSectionCard extends StatelessWidget {
  final String deviceType;
  const ThirdSectionCard({
    super.key, required this.deviceType,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: deviceType ==DeviceType.desktop ?100.w: deviceType ==DeviceType.tablet ? 150.w: deviceType ==DeviceType.mobile ? 0.8.sw: 100.w,



      padding: EdgeInsets.all(deviceType ==DeviceType.desktop ?20:20),
      // decoration: BoxDecoration(border: Border.all()),
      child: Column(
        children: [
          Icon(Icons.build_circle_outlined,color: Color(0xffca970b),
          size: 50.sp,
          ),
          SizedBox(height: 5.h,),
          Text('GROUP OWNERS',
          
          style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,
          fontSize: 20.sp,
         height: 1.7.h
          ),
          
          ),
           SizedBox(height: 5.h,),
          Text('We offer a variety of solutions from leading financial service providers,\nso you have many options when deciding what type of annuity is right for you,',
       style: TextStyle(color: Color.fromRGBO(255, 255, 255, 0.5),
       fontSize: 16.sp,
       height: 1.5.h,
       ),
    
          textAlign: TextAlign.center,
          // maxLines: 5,
          
          
          )
        ],
      ),
      
    );
  }
}