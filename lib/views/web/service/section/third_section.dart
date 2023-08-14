import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/device_type.dart';

class CustomOurServicesSection extends StatelessWidget {
  final String deviceType;
  const CustomOurServicesSection({super.key, required this.deviceType});

  @override
  Widget build(BuildContext context) {
    return  Container(
      constraints: BoxConstraints(
        maxHeight: 2.sh,
        minHeight: 0.5.sh
      ),
              // height: 1.sh,
              width: 1.sw,
              padding: EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Our services',style: TextStyle(fontSize: 30.sp,fontWeight: FontWeight.bold,),),
                  SizedBox(height: 20.h,),
                     Text('We offer a comprehensive portfolio management, IRA, annuity, non-retirement, and\nother investment accounts and manage a portfolio designed to meet your needs.',style: TextStyle(fontSize: 17.sp,fontWeight: FontWeight.w300,),),
                                     SizedBox(height: 20.h,),
      
                                Expanded(
                                  // margin: EdgeInsets.symmetric(horizontal: 40),
                                  // height: 500.h,
                                  
                                  child: GridView.builder(
                                    primary: true,
                                      // controller: scrollController,
                                    addRepaintBoundaries: true,
                                    
                                    gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                                                crossAxisCount: deviceType ==DeviceType.desktop ? 3 :deviceType ==DeviceType.tablet ?2:deviceType == DeviceType.mobile ? 1:3,
                                                crossAxisSpacing: 5.0,
                                                mainAxisSpacing: 2,
                                              ),
                                              itemCount: 20,
                                 itemBuilder: (context,index){
                                return CustomServiceCard();
                                 },
                                  ),
                                )
      
      
                ],
              ),
             );
  }
}

class CustomServiceCard extends StatefulWidget {
  const CustomServiceCard({
    super.key,
  });

  @override
  State<CustomServiceCard> createState() => _CustomServiceCardState();
}

class _CustomServiceCardState extends State<CustomServiceCard> with SingleTickerProviderStateMixin{

  AnimationController? _controller;
  Animation? _animation;
  Animation? _padding;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller =AnimationController(vsync: this,
    duration: Duration(milliseconds: 275)
    );

    _animation =Tween(begin: 1.0,end: 1.0).animate(
      CurvedAnimation(parent: _controller!, curve: Curves.easeIn)
    );

     _padding =Tween(begin: 0.0,end: -25).animate(
      CurvedAnimation(parent: _controller!, curve: Curves.easeIn)
    );

    _controller!.addListener(() {
      setState(() {
        
      });
     });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border.all()),
     height: 400.h,
     width:90.w,
                                  
      child: Card(
       
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
         MouseRegion(
          onEnter: (value){
            setState(() {
              _controller!.forward();
            });
          },
             onExit: (value){
            setState(() {
              _controller!.reverse();
            });
          },
           child: Container(
            transform: Matrix4(_animation!.value,0,0,0,0,_animation!.value,0,0,0,0,1,0,_padding!.value,_padding!.value,0,1),
             child: Container(
               height: 250.h,
                       // width: 100.w,
                       alignment: Alignment.center,
                       
              decoration: BoxDecoration(
               image: DecorationImage(image: NetworkImage('https://images.unsplash.com/photo-1548690312-e3b507d8c110?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjB8fGd5bXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60'),fit: BoxFit.cover,),
             border: Border.all(),
              ),
              child: Icon(Icons.fit_screen,color: Colors.white,size: 26.sp,),
             ),
           ),
         ),
       
         SizedBox(height: 10.h,),
         Padding(
           padding: const EdgeInsets.symmetric(horizontal:20),
           child: Text('GRIT STRENGTH',
           style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.bold),
                     overflow: TextOverflow.ellipsis,
           ),
         ),
               SizedBox(height: 5.h,),
         Padding(
                          padding: const EdgeInsets.symmetric(horizontal:20),
           child: Text('Lorem ipsum dolor sit amet, consectetur adipisicing elit. Error debitis unde eum ipsa numquam inventore etirement plan assets to an IRA.',
           style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w300),
           maxLines: 3,
           overflow: TextOverflow.ellipsis,
           ),
         ),
                     SizedBox(height: 5.h,),

                     Padding(
                                  padding: const EdgeInsets.symmetric(horizontal:20),
                       child: Row(
                         children: [
                           Text('Read more',
                           style: TextStyle(color: Color(0xffdba923)),
                           ),
                           SizedBox(width: 3.w,),
                           Icon(Icons.expand_more,
                           color: Color(0xffdba923)
                           )
                         ],
                       ),
                     ),
                        //  SizedBox(height: 15.h,),
       ]),

      ),
    );
  }
}