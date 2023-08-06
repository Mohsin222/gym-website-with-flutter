import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:website1/utils/device_type.dart';
import 'package:website1/utils/hover_class.dart';

class Section6 extends StatelessWidget {
    final String deviceType;
  const Section6({super.key, required this.deviceType});

  @override
  Widget build(BuildContext context) {
   
    return  Container(
      // height: 0.5.sh,
         width: 1.sw,
    margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
        // color: Color(0xffF2F3F8),
        color: Color(0xfff9f9f9),
        



        
      // ),
      // child: Wrap(
      //   alignment: WrapAlignment.center,
      //   spacing: 20,
      //   children
      // ),
      
      ),
      child: Wrap(
        alignment: WrapAlignment.center,
spacing: 30.w,
   children: [
   CustomSec6PricingCard(deviceType: deviceType,),
          CustomSec6PricingCard(deviceType: deviceType),
          CustomSec6PricingCard(deviceType: deviceType),
   ],

      
      ),
    );
  }
}

class CustomSec6PricingCard extends StatelessWidget {
      final String deviceType;
   CustomSec6PricingCard({
    super.key, required this.deviceType,

  });


  bool hover=false;
 var spacing = SizedBox(height: 10.h,);

  @override
  Widget build(BuildContext context) {
    
    return Card(
      child: Container(
        width: deviceType == DeviceType.desktop ? 0.2.sw: deviceType == DeviceType.tablet ? 0.4.sw:  deviceType == DeviceType.mobile ? 1.sw:  0.3.sw,
          
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
               SizedBox(
                        width: 1.sw,
                        child: Container(
                       color: Color(0xff050521),
                          padding: EdgeInsets.all(25),
                      
                         child: Text('Get Started',
                           style: TextStyle(
                  fontSize: 18.sp,
                  letterSpacing: 1.sp,
                  color: Colors.white
                ),
                         ))),
            Container(
              padding: EdgeInsets.all(40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                    Text('FREE 05 DAYS',
                style: TextStyle(
                  fontSize: 18.sp,
                  letterSpacing: 1.sp,
                  color: Color.fromARGB(255, 204, 205, 209)
                ),
                ),
              spacing,
                RichText(text: TextSpan(
                  text:'\$',
                  children: [
                    TextSpan(
                     text: '0',
                     style: TextStyle(fontSize: 72.sp,
                 fontWeight: FontWeight.bold
                     )
                    ),
            
                    TextSpan(text: '/MO'),
                  ]
                )),
                       spacing,
                  // Container(
                  //   alignment: Alignment.center,
                  //  padding: EdgeInsets.all(8),
                  // decoration: BoxDecoration(borderRadius: BorderRadius.circular(50.r),
                  //   color: Color(0xffca970b),
                  // ),
                  // ),
                             spacing,
                 
                        _textWidget(text: 'Free Consultation'),
                        spacing,
                     
                                    _textWidget(text: 'Group classes'),
               spacing,
                
                             _textWidget(text: 'Personal trainer'),
                            spacing,
                          _textWidget(text: 'Personal trainer',),
                            spacing,
                     _textWidget(text: 'Personal trainer',),
                        SizedBox(height: 20.h,),
            
                ],
              ),
            ),
                      HoverBuilder(
                      builder :(isHovered){
                        return  Container(
                          width: 1.sw,
                          padding: EdgeInsets.all(25),
                          decoration: BoxDecoration(
                           
                            border: Border.all(
                               color: isHovered ? Colors.yellow:Colors.black,
                            )
                            
                          ),
                                       
                                       
                           child: Text('Get Started',
                                style: TextStyle(color: Colors.black),
                                textAlign: TextAlign.center,
                           ));
                      }
                      )
            ],
          ),
      ),
    );
  }

  _textWidget({required String text}){
    return     Text(text,
                         style: TextStyle(fontSize: 16.sp,
               fontWeight: FontWeight.w300
                   )
    );
  }
}

