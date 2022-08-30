import 'package:flutter/material.dart';

class Timebutton2 extends StatelessWidget {
  Timebutton2({Key? key,this.child, this.color,this.onTap,this.child2,this.onTap2,this.color2}) : super(key: key);
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
      width:width*0.26 ,
      height: height*.035,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          GestureDetector(
            onTap: onTap,
            child: Container(
              width:width*0.12 ,
              height: height*.035,
              decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Center(child: Text(child!,style: const TextStyle(fontSize: 11, letterSpacing: .15,color: Colors.black),)),

            ),
          ),
          const Text('-'),
          GestureDetector(
            onTap: onTap2,
            child: Container(
              width:width*0.12 ,
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
