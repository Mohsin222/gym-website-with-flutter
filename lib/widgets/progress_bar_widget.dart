import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ProgressBarWidget extends StatelessWidget {
  const ProgressBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('HTML',style: TextStyle(fontWeight: FontWeight.w600),),
                    // SizedBox(width: 20.w,),
                    Spacer(),
                    Text('60%',style: TextStyle(fontWeight: FontWeight.w600),),
                    SizedBox(width: 20.w,),
                  ],
                ),
                SizedBox(height: 8.h,),
                 FittedBox(
                  fit: BoxFit.fill,
                   child: LinearPercentIndicator(
                                 width: 1.sw,
                                 lineHeight: 20.0,
                                 barRadius: Radius.circular(10.r),
                                 percent: 0.8,
                                 backgroundColor: Colors.grey,
                                 progressColor: Colors.yellow[400],
                               ),
                 ),
      ],
    );
  }
}