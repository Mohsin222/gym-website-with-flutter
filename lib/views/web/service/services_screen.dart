import 'package:flutter/material.dart';
import 'package:flutter/src/animation/animation_controller.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:website1/utils/device_type.dart';
import 'package:website1/views/appbar/navbar.dart';
import 'package:website1/views/footer/footer.dart';
import 'package:website1/views/web/service/section/third_section.dart';

import '../../../widgets/hover_img_widget.dart';
import '../about_us/widgets/about_us_banner.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
      
        if (constraints.maxWidth <= 500) {
      return ServicesScreenMobileBody();
        
       
        }
        if (constraints.maxWidth < 700) {
     
      return ServicesScreenMobileBody();
    
        }
        if (constraints.maxWidth < 950) {
          return ServicesScreenTabletBody();
   
     
        } else {
          return ServicesScreenDeskTop();
        }
      }),
    );
  }
}


class ServicesScreenDeskTop extends StatefulWidget {
  const ServicesScreenDeskTop({super.key});

  @override
  State<ServicesScreenDeskTop> createState() => _ServicesScreenDeskTopState();
}

class _ServicesScreenDeskTopState extends State<ServicesScreenDeskTop>
 {







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
        height: 1.sh,
        child: SingleChildScrollView(
      
          child: Column(
      
          children: [
             CustomBannerWithText(text: 'Services',),
             HoverImageWidget(),
             CustomOurServicesSection(deviceType: DeviceType.desktop,),
             FooterScreen(deviceType: DeviceType.desktop)
      
            
          ],
        )),
      ),
    );
  }
}



class ServicesScreenTabletBody extends StatelessWidget {
  const ServicesScreenTabletBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
         body: Container(
        height: 1.sh,
        child: SingleChildScrollView(
      
          child: Column(
      
          children: [
             CustomBannerWithText(text: 'Services',),
             CustomOurServicesSection(deviceType: DeviceType.tablet,),
             FooterScreen(deviceType: DeviceType.tablet)
      
            
          ],
        )),
      ),
    );
  }
}


class ServicesScreenMobileBody extends StatelessWidget {
  const ServicesScreenMobileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
         body: Container(
        height: 1.sh,
        child: SingleChildScrollView(
      
          child: Column(
      
          children: [
             CustomBannerWithText(text: 'Services',),
             CustomOurServicesSection(deviceType: DeviceType.mobile,),
             FooterScreen(deviceType: DeviceType.mobile)
      
            
          ],
        )),
      ),
    );
  }
}