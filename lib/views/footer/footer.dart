// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:website1/utils/device_type.dart';
import 'package:website1/views/footer/widgets/custom_footer_heading.dart';
import 'package:website1/views/footer/widgets/footer_col_1.dart';
import 'package:website1/views/footer/widgets/footer_col_2.dart';
import 'package:website1/views/footer/widgets/footer_col_3.dart';
import 'package:website1/views/footer/widgets/footer_col_4.dart';
import 'package:website1/widgets/custom_social_icons.dart';

class FooterScreen extends StatelessWidget {
   final String deviceType;
  const FooterScreen({
    Key? key,
    required this.deviceType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(deviceType);
 
    return  Container(
      width: 1.sw,
      
      padding:deviceType ==DeviceType.mobile ?const EdgeInsets.symmetric(vertical: 50,horizontal: 10):deviceType == DeviceType.desktop ?const EdgeInsets.all(60):deviceType==DeviceType.tablet ? const EdgeInsets.symmetric(vertical: 40,horizontal: 30):const EdgeInsets.all(60),
      
      decoration: BoxDecoration(
      color:const Color(0xff050521),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
                     width: 1.sw,
            child: Wrap(
              spacing: 10,
              // crossAxisAlignment: CrossAxisAlignment.start,
              alignment: WrapAlignment.center,
              children: [
              FooterFirstColumn(deviceType: deviceType,),
          
                
               
                FotterSecondColumn(deviceType: deviceType,),
                   
                 FooterColumn3(deviceType: deviceType,),
                 FooterColumn4(deviceType: deviceType)

            ]),
          ),
          SizedBox(height: 30.h,),
                 Divider(color: Colors.white),
                   SizedBox(height: 20.h,),
                   Container(
                    width: 1.sw,
                     child: Flex(
                      direction: deviceType == DeviceType.mobile ?Axis.vertical:Axis.horizontal,
                    
                      mainAxisAlignment:deviceType == DeviceType.mobile?MainAxisAlignment.center: MainAxisAlignment.spaceBetween,
           mainAxisSize :MainAxisSize.max,

             crossAxisAlignment : CrossAxisAlignment.center,
        
                      // direction:deviceType==DeviceType.mobile ?Axis.vertical: Axis.horizontal,
                      //  mainAxisAlignment:deviceType==DeviceType.mobile?MainAxisAlignment.center: MainAxisAlignment.spaceBetween,
                      //  crossAxisAlignment: deviceType==DeviceType.mobile?CrossAxisAlignment.center:CrossAxisAlignment.start,
                        //    alignment: WrapAlignment.spaceBetween,
                        // runAlignment: WrapAlignment.spaceBetween,
                           
                        children: [
                          RichText(text: TextSpan(text: '© 2023 ',
                          style: TextStyle(color: Colors.white),
                          children: [
                            TextSpan(
                            text:  'GYM ',
                            style: TextStyle(  color: Color(0xffca970b)),
                            ),
                                TextSpan(
                            text:  'Made With  By ',
                            style: TextStyle(color: Colors.white),
                            ),
                                TextSpan(
                            text:  'Flutter',
                            style: TextStyle(
                              color: Color(0xffca970b)
                            ),
                            ),
                          ]
                          ),),
                  
               
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text( 'Follow Us:',
                            style: TextStyle(
                              color: Colors.white
                            ),),
                                 custom_social_icons(deviceType: deviceType),
                            custom_social_icons(deviceType: deviceType),
                              custom_social_icons(deviceType: deviceType),
                            ],
                            
                          ),
                     
                        ],
                     ),
                   ),
                    
        ],
      ),
    );
  }
}

