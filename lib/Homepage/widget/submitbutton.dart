import 'package:flutter/material.dart';

import '../../const/constvalue.dart';
class submitbutton extends StatelessWidget {
   submitbutton({Key? key,required this.lable,this.ontap}) : super(key: key);

  String? lable;
  Function()? ontap;


  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.only(left: 25,right: 25),
      //   padding: EdgeInsets.all(10),
      height: height * 0.055,
      width: width*.8,
      decoration: BoxDecoration(color: Colors.blue,borderRadius: BorderRadius.circular(10)),
      child: Center(child: Text(lable!,style: whitecolor,)),
    );
  }
}
