import 'package:flutter/material.dart';

class HoverImageWidget extends StatefulWidget {
  const HoverImageWidget({
    super.key,
  });

  @override
  State<HoverImageWidget> createState() => _HoverImageWidgetState();
}

class _HoverImageWidgetState extends State<HoverImageWidget> with SingleTickerProviderStateMixin{

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

    _animation =Tween(begin: 1.0,end: 0.9).animate(
      CurvedAnimation(parent: _controller!, curve: Curves.easeIn)
    );

     _padding =Tween(begin: 0.0,end: -20).animate(
      CurvedAnimation(parent: _controller!, curve: Curves.easeIn)
    );

    _controller!.addListener(() {
      setState(() {
        
      });
     });
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
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
       transform: Matrix4(_animation!.value,0,0,0,0,_animation!.value,0,0,0,0,1,0,_animation!.value,_animation!.value,0,1),
        child:Image(image: NetworkImage('https://images.unsplash.com/photo-1548690312-e3b507d8c110?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjB8fGd5bXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60'),fit: BoxFit.cover,),),

        
      
    );
  }
}