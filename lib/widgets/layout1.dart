import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:website1/utils/device_type.dart';
import 'package:website1/views/web/section1/section1.dart';
import 'package:website1/views/web/section1/section4.dart';

import '../views/web/section1/secction5.dart';
import '../views/web/section1/section2.dart';
import '../views/web/section1/section3.dart';

class Layout1 extends StatelessWidget {
  const Layout1({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: LayoutBuilder(builder: (context,constraints){
        print(constraints.maxWidth);
        if(constraints.maxWidth <= 500){
          return MobileBody();
          return Container(color: Colors.red,);
        }
          if(constraints.maxWidth < 700){
          // return Container(color: Colors.blue,);
          // return Section1(deviceType: 'desktop',);
          return MobileBody();
        }
          if(constraints.maxWidth < 950){
          return TabletBody();
        }else{
          return DesktopBody();
        }
        
      }
      ),
    );
  }
}


class MobileBody extends StatelessWidget {
  const MobileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text(DeviceType.mobile),),
      body: SingleChildScrollView(
        child: Column(
          children: [
          Section1(deviceType: DeviceType.mobile)  ,
           Section2(deviceType: DeviceType.mobile,),
                             Section3(deviceType: DeviceType.mobile,),
                             Section4(deviceType: DeviceType.mobile,),
                                                              Section5(deviceType: DeviceType.mobile,),
          ],
        ),
      ),
    );
  }
}

class TabletBody extends StatelessWidget {
  const TabletBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text(DeviceType.tablet),),
      body: SingleChildScrollView(
        child: Column(
          children: [
          Section1(deviceType: DeviceType.tablet)  ,
           Section2(deviceType: DeviceType.tablet,),
                             Section3(deviceType: DeviceType.tablet,),
                             Section4(deviceType: DeviceType.tablet,),
                                                              Section5(deviceType: DeviceType.tablet,),
          ],
        ),
      ),
    );
  }
}

class DesktopBody extends StatelessWidget {
  const DesktopBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      appBar: AppBar(
        title: Text('desktop'),

      ),
      body: Container(
        // height: 1.sh,
        // width: 1.sw,
        child: Row(
          children: [
            // first column
            Expanded(
              flex: 4,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    // Container(
                    //   height: 0.5.sh,
                    //   color: Colors.amber,
                    // ),
                  
                  Section1(deviceType:DeviceType.desktop ,),
                  Section2(deviceType: DeviceType.desktop,),
                  Section3(deviceType: DeviceType.desktop,),
                  Section4(deviceType: DeviceType.desktop,),
                                 Section5(deviceType: DeviceType.desktop,),
                    Container(
                      height: 1.sh,
                         width: 1.sw,
                      child: ListView.builder(
                        itemCount: 10,
                        
                        itemBuilder: (context,index){
                        return Container(height: 100,color: Colors.red,);
                      }),
                    ),
                    Container(
                      child: Text('MMMMMMMMMMMMMMMMMMMMMMMMMMMMMM'),
                    )
                  ],
                ),
              ),
            ),
            //second column
            // Expanded(
            //   child: Container(
            //     color: Colors.amber,
            //     width: 0.5.w,
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}