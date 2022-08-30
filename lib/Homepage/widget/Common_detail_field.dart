import 'package:flutter/material.dart';


class Detail_field extends StatelessWidget {
   Detail_field({Key? key, this.child1, this.child2, this.child3}) : super(key: key);

  Widget? child1, child2, child3;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.only(left: 20),
      padding: const EdgeInsets.only(left:5, top: 5, bottom: 5),
      //height: height*.039,
      width: width*.7,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          child1!,
          const SizedBox(width: 10,),
          child2!,
          const SizedBox(width:80,),
          child3!,
        ],
      ),
    );
  }
}
