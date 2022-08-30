import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
   CommonButton({Key? key, this.child, this.color,this.onTap}) : super(key: key);

  String? child;
  Color? color;
  Function() ? onTap;

  @override
  Widget build(BuildContext context) {
    var  height = MediaQuery.of(context).size.height;
    var   width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(left: 6),
        alignment: Alignment.center,
        width:width*0.26 ,
        height: height*.045,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(14),
        ),
        child: Center(child: Text(child!,style: const TextStyle(fontSize: 11, letterSpacing: .15),)),

      ),
    );
  }
}
