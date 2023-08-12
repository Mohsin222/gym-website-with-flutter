// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomNavbar extends StatelessWidget {
   CustomNavbar({super.key});

 String dropdownvalue = 'ABOUT US ';   
  
  // List of items in our dropdown menu
  var items = [    
    'ABOUT US ',
    'SERVICES',
    'BLOG',
    'Item 4',
    'Item 5',
  ];
  @override
  Widget build(BuildContext context) {
    return   Container(
            padding: EdgeInsets.symmetric(vertical: 17,horizontal: 15),
            child: Row(
              children: [
                CustomNavbarTextButton(),
                CustomDropDown(dropDownList: items,selectedValue: dropdownvalue,),
                  CustomDropDown(dropDownList: items,selectedValue: dropdownvalue,),
                               CustomNavbarTextButton(),
          CustomDropDown(dropDownList: items,selectedValue: dropdownvalue,)
          ],
        ),
      );

  }
}

class CustomNavbarTextButton extends StatelessWidget {
  const CustomNavbarTextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
       padding: EdgeInsets.symmetric(vertical: 0,horizontal: 7),
      child: TextButton(onPressed: (){

        CustomDropDown(selectedValue:  'Item 1',dropDownList: [ 'Item 1'],);
      }, child: Text('Contact'.toUpperCase(),
      style: TextStyle(fontSize: 17.sp,color: Colors.black,fontWeight: FontWeight.bold,
      letterSpacing: 2,
      ),
      )),
    );
  }
}

class CustomDropDown extends StatefulWidget {
   String? selectedValue;
   List<String>? dropDownList;
   CustomDropDown({
    Key? key,
    this.selectedValue,
    required this.dropDownList,
  }) : super(key: key);

  @override
  State<CustomDropDown> createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
   
      value: widget.selectedValue,
      icon:  Icon(Icons.expand_more,size: 20.sp,color: Color(0xffca8b18),),
    
      elevation: 16,
      style: const TextStyle(color: Colors.black,),
     
      // underline: Container(
      //   height: 2,
      //   color: Colors.white,
      // ),
   underline: SizedBox(),
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          widget.selectedValue = value!;
        });
      },
    items: widget.dropDownList!.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items,style: TextStyle(fontSize: 17.sp,color: Colors.black,fontWeight: FontWeight.bold,
      letterSpacing: 2,
      ),),
                );
              }).toList(),
    );
  }
}