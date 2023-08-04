import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:website1/views/web/section1/section1.dart';

class HomeScreem extends StatefulWidget {
  const HomeScreem({super.key});

  @override
  State<HomeScreem> createState() => _HomeScreemState();
}

class _HomeScreemState extends State<HomeScreem> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
      
          Section1(deviceType: 'desktop',),
         Container(
        height: MediaQuery.of(context).size.height,
        color: Colors.green,
      ),
      Container(
  width: 249.w,
  height: 375.h,
          color: Colors.blue,
),
            
//If you want to display a square based on width:
Container(
  width: 300.w,
  height: 300.w,
          color: Colors.green,
  
),

//If you want to display a square based on height:
Container(
  width: 300.h,
  height: 300.h,
          color: Colors.amberAccent,
),

//If you want to display a square based on minimum(height, width):
Container(
  width: 300.r,
  height: 300.r,
      color: Colors.red,
),
        ]),
      ),
    );
  }
}

