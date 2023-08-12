import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:website1/utils/device_type.dart';

class Section4 extends StatelessWidget {
    final String deviceType;
  const Section4({super.key, required this.deviceType});

  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Color(0xfff2f3f8),
      width: 1.sw,
      // height: 1.sh,
      padding: deviceType == DeviceType.mobile ?EdgeInsets.symmetric(vertical: 50,horizontal: 10): EdgeInsets.symmetric(vertical: 50,horizontal: 50),
      child: Wrap(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              //  width: 0.4.sw,
                width: deviceType ==DeviceType.mobile ?1.sw:0.4.sw,
               padding:const EdgeInsets.symmetric(vertical: 40,horizontal: 20),
          
            // color: Colors.blueAccent,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment:deviceType ==DeviceType.mobile ?CrossAxisAlignment.center: CrossAxisAlignment.start,
            children: [
            FourthSectionHeading(text: 'We Are Different',deviceType: deviceType,),
             SizedBox(height: 40.h,),
            FourthSectiontile(deviceType:deviceType),
   SizedBox(height: 30.h,),
               FourthSectiontile(deviceType: deviceType,),
            SizedBox(height: 30.h,),
               FourthSectiontile(deviceType: deviceType,),
    SizedBox(height: 30.h,),
          ]),
          ),
                Container(
                              width: deviceType ==DeviceType.mobile ?1.sw:0.4.sw,
                  // color: Colors.redAccent,
                        padding: EdgeInsets.symmetric(vertical: 40,horizontal: 20),

                          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment:deviceType ==DeviceType.mobile ?CrossAxisAlignment.center: CrossAxisAlignment.start,
            children: [
            FourthSectionHeading(text: 'Our Mission',deviceType: deviceType,),
             SizedBox(height: 40.h,),
    Container(
      padding: EdgeInsets.symmetric(vertical: 130,horizontal: 50),
        constraints: BoxConstraints(
    maxHeight: double.infinity,
),
      decoration: BoxDecoration(
        
        border: Border.all(width: 4.w,color: Colors.white),
        image: DecorationImage(image: NetworkImage('https://images.unsplash.com/photo-1571731956672-f2b94d7dd0cb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8Z3ltJTIwZ2lybHxlbnwwfDB8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60'),fit: BoxFit.cover,filterQuality: FilterQuality.high)
        
      ),
    ),
          ]),
                  ),
        ]
      ),
    );
  }
}

class FourthSectionHeading extends StatelessWidget {
  final String deviceType;
  final String text;
  const FourthSectionHeading({
    super.key, required this.text, required this.deviceType,
  });

  @override
  Widget build(BuildContext context) {
    return Text(text,
     style: TextStyle(
          fontSize: 40.sp,
          fontWeight: FontWeight.w900,
          color: Colors.black
        ),
        textAlign: deviceType == DeviceType.mobile ? TextAlign.center:TextAlign.start,
    );
  }
}

class FourthSectiontile extends StatelessWidget {
  final String deviceType;
  const FourthSectiontile({
    super.key, required this.deviceType,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 100.w,
    

      child: Row(
        children: [
          Icon(Icons.bus_alert,size: 42.sp,
          color: Color(0xffd5a20b),
          ),
          SizedBox(width: 2.w,),
          Flexible(
            child: Column(
        crossAxisAlignment:deviceType ==DeviceType.mobile ?CrossAxisAlignment.center: CrossAxisAlignment.start,
              children:  [
                Text('Economies of Scale',
                style: TextStyle(fontWeight: FontWeight.w700,
                fontSize: 24.sp
                
                ),
                
                ),
                      Text('When you buy shares you have to pay dealing costs and admin fees, which can eat away at the value of your investment.',
                                      
                              maxLines: 3,
                         
                                          softWrap: true,
                                          style: TextStyle(fontWeight: FontWeight.w300,
                                          letterSpacing: 1
                                          
                                          
                                          ),
                                          textAlign: deviceType ==DeviceType.mobile?TextAlign.center :TextAlign.left,
                          
                                  ),
              ],
            ),
          )
        ],
      ),
    );
  }
}