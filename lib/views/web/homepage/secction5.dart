import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:website1/utils/device_type.dart';
import 'package:website1/views/web/homepage/section4.dart';



class Section5 extends StatelessWidget {
  final String deviceType;
   Section5({super.key, required this.deviceType});

  List images=["assets/images/clients1.png","assets/images/clients2.png","assets/images/clients3.png","assets/images/clients4.png",];

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 1.sw,
      padding: EdgeInsets.all(60),
      decoration: BoxDecoration(
        // color: Color(0xffF2F3F8),
        color: Colors.white

        
      ),
      child: Column(
crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 1.sw,
            // decoration: BoxDecoration(border: Border.all()),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment:deviceType ==DeviceType.mobile ?CrossAxisAlignment.center: CrossAxisAlignment.center,
              children: [
                 FourthSectionHeading(text: 'Our Clients',deviceType: deviceType,),    
                SizedBox(height: 6.h,),  
                  Text('We offer a variety of solutions from leading financial service providers,\nso you have many options when deciding what type of annuity is right for you,',
                 style: TextStyle(color: Colors.black,
                 fontSize: 14.sp,
                 height: 1.5.h,
                 ),
              
            textAlign: TextAlign.center,
                  ),
            SizedBox(height: 6.h,),  
            Row(
              // mainAxisAlignment:  deviceType ==DeviceType.mobile ?MainAxisAlignment.center:MainAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back)),
                SizedBox(width: 5.w,),
              IconButton(onPressed: (){}, icon: Icon(Icons.forward))
              ],
            )
              ],
            ),
          ),
  //         Padding(
  //   padding: const EdgeInsets.all(20.0),
  //   child: Image(image: AssetImage(images[0])),
  // ),
  //        Padding(
  //   padding: const EdgeInsets.all(20.0),
  //   child: Image(image: AssetImage(images[1])),
  // ),
  //        Padding(
  //   padding: const EdgeInsets.all(20.0),
  //   child: Image(image: AssetImage(images[2])),
  // ),
  //        Padding(
  //   padding: const EdgeInsets.all(20.0),
  //   child: Image(image: AssetImage(images[3])),
  // ),
Wrap(
  verticalDirection: VerticalDirection.up,
alignment:WrapAlignment.start,
runAlignment: WrapAlignment.spaceBetween,

spacing: 0.1.sw,
clipBehavior: Clip.antiAlias,
  children: images.map((e) =>Padding(
    padding: const EdgeInsets.all(20.0),
    child: Image(image: AssetImage(e)),
  )).toList(),
)
       
     
        ],
      ),
    );
  }
}