import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:website1/utils/device_type.dart';
import 'package:website1/views/footer/footer.dart';
import 'package:website1/views/web/about_us/sections/about_us_section.dart';
import 'package:website1/views/web/about_us/sections/third_sec.dart';
import 'package:website1/views/web/about_us/widgets/about_us_banner.dart';
import 'package:website1/views/web/homepage/section7.dart';

import '../../appbar/navbar.dart';
import '../homepage/section6.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
      
        if (constraints.maxWidth <= 500) {
            return AboutUsMobileScreen();
        
       
        }
        if (constraints.maxWidth < 700) {
     
                 return AboutUsMobileScreen();
    
        }
        if (constraints.maxWidth < 950) {
          return AboutUsTabletScreen();
     
        } else {
          return AboutUsDesktopScreen();
        }
      }),
    );
  }
}


class AboutUsDesktopScreen extends StatelessWidget {
  const AboutUsDesktopScreen({super.key});

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
      body: SingleChildScrollView(
        child: Column(children: [
        const  AboutUsBanner(),
                      AboutUsSection(deviceType: DeviceType.desktop),
                      AboutUsThirdSection(deviceType: DeviceType.desktop,),
          TeamCardSectionWidget(   deviceType: DeviceType.desktop),
   

             FooterScreen(
                  deviceType: DeviceType.desktop
                ),
      
        ]),
      ),
    );
  }
}




class AboutUsTabletScreen extends StatelessWidget {
  const AboutUsTabletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
    toolbarHeight: 100.h,
        backgroundColor: Colors.white,
        // title: Text(DeviceType.desktop,style: TextStyle(color: Colors.black)),
        title:   Container(
                padding:const EdgeInsets.symmetric(vertical: 17,horizontal: 15),
        constraints: BoxConstraints(maxWidth: 188.w),
        width: 50.w,
        child: const Image(image: AssetImage('assets/images/logo.png'),fit: BoxFit.contain,),
    
      ),
        actions: [
        CustomNavbar()
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
        const  AboutUsBanner(),
                          AboutUsSection(deviceType: DeviceType.tablet),
                          AboutUsThirdSection(deviceType: DeviceType.tablet,),

          TeamCardSectionWidget(   deviceType: DeviceType.tablet),
             FooterScreen(
                  deviceType: DeviceType.tablet
                ),
      
        ]),
      ),
    );
  }
}


class AboutUsMobileScreen extends StatelessWidget {
  const AboutUsMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
    toolbarHeight: 100.h,
        backgroundColor: Colors.white,
        // title: Text(DeviceType.desktop,style: TextStyle(color: Colors.black)),
        title:   Container(
                padding:const EdgeInsets.symmetric(vertical: 17,horizontal: 15),
        constraints: BoxConstraints(maxWidth: 188.w),
        width: 50.w,
        child:const Image(image: AssetImage('assets/images/logo.png'),fit: BoxFit.contain,),
    
      ),
        actions: [
        // CustomNavbar()
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
        const  AboutUsBanner(),
                          AboutUsSection(deviceType: DeviceType.mobile),
AboutUsThirdSection(deviceType: DeviceType.mobile,),
          TeamCardSectionWidget(   deviceType: DeviceType.mobile),
             FooterScreen(
                  deviceType: DeviceType.mobile
                ),
      
        ]),
      ),
    );
  }
}