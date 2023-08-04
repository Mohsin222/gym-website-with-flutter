import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Section1 extends StatelessWidget {
  final String deviceType;
  const Section1({
    super.key, required this.deviceType,
  });

  @override
  Widget build(BuildContext context) {
    var widgetSpacing =  SizedBox(height: 20.h,);
    return Container(
      decoration: BoxDecoration(
        image:const DecorationImage(image: NetworkImage('https://images.unsplash.com/photo-1579758629938-03607ccdbaba?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80'),
        fit: BoxFit.cover,
        alignment: Alignment.center,
        filterQuality: FilterQuality.high,
        repeat: ImageRepeat.noRepeat
        
        ),
        border: Border.all(),
      ),
        height: 0.9.sh,
        width: MediaQuery.of(context).size.width,
        // alignment: Alignment.center,
   
        child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
        //  mainAxisSize: MainAxisSize.max,
         crossAxisAlignment: CrossAxisAlignment.center,
    children: [
     
    Container(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          // color: Colors.green,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
  BannerDivder(),

        Text('THIS IS YOUR',
        style: TextStyle(
          fontSize: 36,
          color: Colors.white
        ),
        ),

                        BannerDivder(),
        ],
      ),
    ),

widgetSpacing,
          Container(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          // color: Colors.green,

      child: Text('Primary Heading'.toUpperCase(),
      textAlign: TextAlign.center,
      style:const TextStyle(
        fontSize: 50,
        fontWeight: FontWeight.bold,
        letterSpacing: 5,
               color: Colors.white
        
      ),
      ),
    ),
    
   
   widgetSpacing,

        Container(
          height: 50.h,
          width: 0.3.sh,
              //  padding: const EdgeInsets.symmetric(horizontal: 80),
          color: Colors.green,
          child: ElevatedButton(onPressed: (){}, 
          
          style: ElevatedButton.styleFrom(
           backgroundColor: Color(0xffe3b536),
            // padding: EdgeInsets.symmetric(vertical: 30,horizontal: 50)
          ),
          child: Text('Get a Quote',
          style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 20.sp),
          )),
        )
        ]),
      );
  }
}

class BannerDivder extends StatelessWidget {
  const BannerDivder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
  height: 10.0.h,
  child: new Center(
    child: new Container(
      margin: new EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
      height: 5.0.h,
      width: 0.1.sw,
      color: Colors.red,
    ),
  ),
);
  }
}