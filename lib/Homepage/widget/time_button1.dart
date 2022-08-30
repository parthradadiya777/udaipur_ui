import 'package:flutter/material.dart';

class Timebutton1 extends StatelessWidget {
   Timebutton1({Key? key,this.child, this.color,this.onTap,this.child2,this.onTap2,this.color2}) : super(key: key);
  String? child;
  Color? color;
  Function() ? onTap;
  String? child2;
  Function()? onTap2;
  Color? color2;
  @override
  Widget build(BuildContext context) {
    var  height = MediaQuery.of(context).size.height;
    var   width = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.only(left: 56),
      width:width*0.22 ,
      height: height*.035,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
        GestureDetector(
        onTap: onTap,
        child: Container(
          width:width*0.11 ,
          height: height*.035,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10)
          ),
          child: Center(child: Text(child!,style: const TextStyle(fontSize: 11, letterSpacing: .15,color: Colors.black),)),

        ),
      ),
      GestureDetector(
      onTap: onTap2,
      child: Container(

        width:width*0.11 ,
        height: height*.035,
        decoration: BoxDecoration(
          color: color2,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(child: Text(child2!,style: const TextStyle(fontSize: 11, letterSpacing: .15),)),

      ),
    )
        ],
      ),

    );
  }
}
