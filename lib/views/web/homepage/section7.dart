// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:website1/utils/device_type.dart';
import 'package:website1/utils/hover_class.dart';

import '../../../widgets/custom_social_icons.dart';

class TeamCardSectionWidget extends StatelessWidget {
    final String deviceType;
  const TeamCardSectionWidget({
    Key? key,
    required this.deviceType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 1.sw,
      padding: deviceType== DeviceType.mobile ?EdgeInsets.symmetric(vertical: 50,horizontal: 10) :EdgeInsets.all(90),
        decoration: BoxDecoration(
        // color: Color(0xffF2F3F8),
        color: Colors.white,
        
        ),
        child: Column(
          children: [
            Text('Our Trainers',style: TextStyle(
              fontSize: 30.sp,
              color: Color(0xff050521),
              fontWeight: FontWeight.w900,
            ),),

            Container(
              
              width: 1.sw,
              child: Wrap(
                
                alignment: WrapAlignment.center,
                spacing: 20,
                children: [
                CustomSec7TrainerCard(deviceType: deviceType,),
                 CustomSec7TrainerCard(deviceType: deviceType,),
                  CustomSec7TrainerCard(deviceType: deviceType,),
                   CustomSec7TrainerCard(deviceType: deviceType,),
              ],),
            ),
          ],
        ),
    );
  }
}

class CustomSec7TrainerCard extends StatelessWidget {
  final String deviceType;
  const CustomSec7TrainerCard({
    super.key, required this.deviceType,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 45.sp),
          width: deviceType ==DeviceType.desktop ? 0.2.sw: deviceType ==DeviceType.tablet ?0.3.sw :deviceType ==DeviceType.tablet?1.sw:0.8.sw,
         
          decoration: BoxDecoration(border: Border.all(color: Colors.grey), ),
    //  padding: EdgeInsets.zero,
      // padding: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
    
        children: [
          Container(
width: 1.sw,
              // padding: EdgeInsets.all(20),
        child: Image(image:  AssetImage('assets/images/traner1.jpg',
              
              ),fit: BoxFit.cover)),
              Container(
                padding: EdgeInsets.all(20),
                child: Column(children: [
                  Text('John Doe',
                  style: TextStyle(fontWeight: FontWeight.w700,
                  fontSize: 16.sp
                  ),
                  ),
                  SizedBox(height: 5.h,),
                     Text('PR Manager',
                  style: TextStyle(fontWeight: FontWeight.w700,
                  color: Color(0xff9f9f9f),
                  fontSize: 13.sp
                  ),
                  ),
                    SizedBox(height: 5.h,),
                    SizedBox(
                      width: 1.sw,
                      child: FittedBox(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                              //  alignment: WrapAlignment.center,
                          children: List.generate(4, (index) => custom_social_icons(deviceType: deviceType)),
                        ),
                      ),
                    ),
                ]),
              )
        ],
      ),
    );
  }
}

