import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:website1/utils/device_type.dart';
import 'package:website1/views/footer/footer.dart';
import 'package:website1/views/web/homepage/section1.dart';
import 'package:website1/views/web/homepage/section4.dart';

import '../views/appbar/navbar.dart';
import '../views/web/homepage/secction5.dart';
import '../views/web/homepage/section2.dart';
import '../views/web/homepage/section3.dart';
import '../views/web/homepage/section6.dart';
import '../views/web/homepage/section7.dart';

class Layout1 extends StatelessWidget {
  const Layout1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        print(constraints.maxWidth);
        if (constraints.maxWidth <= 500) {
          return HomePageMobileBody();
       
        }
        if (constraints.maxWidth < 700) {
          // return Container(color: Colors.blue,);
          // return Section1(deviceType: 'desktop',);
          return HomePageMobileBody();
        }
        if (constraints.maxWidth < 950) {
          return HomePageTabletBody();
        } else {
          return HomePageDesktopBody();
        }
      }),
    );
  }
}

class HomePageMobileBody extends StatelessWidget {
  const HomePageMobileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
    toolbarHeight: 0.1.sh,
        backgroundColor: Colors.white,
        title: Text(DeviceType.mobile,style: TextStyle(color: Colors.black),),
        actions: [
        // CustomNavbar()
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Section1(deviceType: DeviceType.mobile),
            Section2(
              deviceType: DeviceType.mobile,
            ),
            Section3(
              deviceType: DeviceType.mobile,
            ),
            Section4(
              deviceType: DeviceType.mobile,
            ),
            Section5(
              deviceType: DeviceType.mobile,
            ),
            Section6(
              deviceType: DeviceType.mobile,
            ),
            TeamCardSectionWidget(
              deviceType: DeviceType.mobile,
            ),
            FooterScreen(
              deviceType: DeviceType.mobile,
            ),
          ],
        ),
      ),
    );
  }
}

class HomePageTabletBody extends StatelessWidget {
  const HomePageTabletBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
    toolbarHeight: 0.1.sh,
        backgroundColor: Colors.white,
        title: Text(DeviceType.tablet,style: TextStyle(color: Colors.black)),
        actions: [
        CustomNavbar()
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Section1(deviceType: DeviceType.tablet),
            Section2(
              deviceType: DeviceType.tablet,
            ),
            Section3(
              deviceType: DeviceType.tablet,
            ),
            Section4(
              deviceType: DeviceType.tablet,
            ),
            Section5(
              deviceType: DeviceType.tablet,
            ),
            TeamCardSectionWidget(
              deviceType: DeviceType.tablet,
            ),
            
            Section6(
              deviceType: DeviceType.tablet,
            ),
            FooterScreen(
              deviceType: DeviceType.tablet,
            ),
          ],
        ),
      ),
    );
  }
}

class HomePageDesktopBody extends StatelessWidget {
   HomePageDesktopBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
    toolbarHeight: 100.h,
        backgroundColor: Colors.white,
        // title: Text(DeviceType.desktop,style: TextStyle(color: Colors.black)),
        title:   Container(
                padding: EdgeInsets.symmetric(vertical: 17,horizontal: 15),
        constraints: BoxConstraints(maxWidth: 188.w),
        width: 50.w,
        child: Image(image: AssetImage('assets/images/logo.png'),fit: BoxFit.contain,),
    
      ),
        actions: [
        CustomNavbar()
        ],
      ),
      body: Container(
        //  height: 1.sh,
        // height: 1.sh,
        // width: 1.sw,
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Container(
              //   height: 0.5.sh,
              //   color: Colors.amber,
              // ),

    

              Section1(
                deviceType: DeviceType.desktop,
              ),
              Section2(
                deviceType: DeviceType.desktop,
              ),
              Section3(
                deviceType: DeviceType.desktop,
              ),
              Section4(
                deviceType: DeviceType.desktop,
              ),
              Section5(
                deviceType: DeviceType.desktop,
              ),
              Section6(
                deviceType: DeviceType.desktop,
              ),
              TeamCardSectionWidget(
                deviceType: DeviceType.desktop,
              ),
              FooterScreen(
                deviceType: DeviceType.desktop,
              ),

              Container(
                height: 1.sh,
                child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 100,
                        color: Colors.red,
                      );
                    }),
              ),
              Container(
                child: Text('MMMMMMMMMMMMMMMMMMMMMMMMMMMMMM'),
              ),
            
            ],
          ),
        ),
      ),
    );
  }
}



