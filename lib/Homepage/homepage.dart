import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:udaipur/Homepage/controller/homecontroller.dart';
import 'package:udaipur/Homepage/widget/Common_detail_field.dart';
import 'package:udaipur/Homepage/widget/common_Button2.dart';
import 'package:udaipur/Homepage/widget/common_button.dart';
import 'package:udaipur/Homepage/widget/submitbutton.dart';
import 'package:udaipur/Homepage/widget/time_button1.dart';
import 'package:udaipur/Homepage/widget/timebutton2.dart';
import 'package:udaipur/const/constvalue.dart';

class HomeView extends GetView<HomeController>{
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
Get.lazyPut(() => HomeController());
   var  height = MediaQuery.of(context).size.height;
  var   width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.density_large_sharp),
        actions: const [
          Icon(Icons.note_add_outlined),
          SizedBox(width: 5,),
          Icon(Icons.personal_injury)
        ],

      ),
      body: Obx(()=>
         Container(
          padding: const EdgeInsets.all(10),
          height: height,
          width: width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CommonButton_2(
                    onTap: (){
                      controller.send.value = true;
                      controller.fetchme.value = false;
                    },
                    color:controller.send.value? Colors.blue[500]: Colors.grey.withOpacity(0.3),
                    child: 'Send',

                  ),
                  CommonButton_2(
                    onTap: (){
                      controller.send.value = false;
                      controller.fetchme.value = true;
                    },
                    color:controller.fetchme.value? Colors.blue[500]: Colors.grey.withOpacity(0.3),
                    child: 'Fetch me',

                  ),
                ],
              ),

              const SizedBox(height: 20,),

              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text('Details',style: boldtext,),
              ),
              const SizedBox(height: 20,),
              Detail_field(
                child1: const Icon(Icons.location_on_rounded,color: Colors.green, size: 19,),
                child2: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('655 Linyin Ave',style: TextStyle(color: Colors.green),),
                    Text('Jeroen',style: TextStyle(color: Colors.black, fontSize: 8),),

                  ],
                ),
                child3: const Icon(Icons.navigate_next_outlined,color: Colors.green,) ,
              ),

              const SizedBox(height: 20,),
              Detail_field(
                child1: const Icon(Icons.flag,color: Colors.red,),
                child2: const Text('Enter Your Destination',style:  TextStyle(color: Colors.black),),
                child3: const SizedBox()
              ),

              const SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text('Pick Up',style: boldtext),
              ),

              Container(
                margin: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Text('Time',style: boldtext.copyWith(fontSize: 12),),
                    SizedBox(
                      //width: height * 0.3,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Timebutton1(
                            onTap: (){
                              controller.am.value = true;
                              controller.pm.value = false;
                            },
                            onTap2: (){
                              controller.am.value = false;
                              controller.pm.value = true;
                            },

  color:controller.am.value? Colors.blue[500]: Colors.grey.withOpacity(0.3),
  child: 'am',
        color2: controller.pm.value? Colors.blue[500]: Colors.grey.withOpacity(0.3),
                            child2: 'pm',
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Timebutton2(

                            child:'11:00' ,
                            child2: '12:00',

                          )

                        ],
                      ),
                    ),
                  ],

                ),
              ),
              const SizedBox(height: 20,),

              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text('Item Information',style: boldtext),
              ),
              const SizedBox(height: 20,),

              Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    CommonButton(
                      onTap: (){
                        controller.tap.value= true;
                        controller.tap2.value= false;
                        controller.tap3.value = false;
                        controller.tap4.value = false;
                        controller.tap5.value = false;
                        controller.tap6.value = false;
                      },
                      color:controller.tap.value? Colors.blue[500]: Colors.grey.withOpacity(0.3),
                    child: 'Daily necessities',),
                    const SizedBox(width: 5,),
                    CommonButton(
                      onTap: (){
                        controller.tap.value= false;
                        controller.tap2.value= true;
                        controller.tap3.value = false;
                        controller.tap4.value = false;
                        controller.tap5.value = false;
                        controller.tap6.value = false;
                      },
                      color:controller.tap2.value? Colors.blue[500]: Colors.grey.withOpacity(0.3),
                      child: 'Food',),
                    const SizedBox(width: 5,),

                    CommonButton(
                      onTap: (){
                        controller.tap.value= false;
                        controller.tap2.value= false;
                        controller.tap3.value = true;
                        controller.tap4.value = false;
                        controller.tap5.value = false;
                        controller.tap6.value = false;
                      },
                      color:controller.tap3.value? Colors.blue[500]: Colors.grey.withOpacity(0.3),
                  child: 'Document',),
                    const SizedBox(width: 5,),


                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                  CommonButton(
                    onTap: (){
                      controller.tap.value= false;
                      controller.tap2.value= false;
                      controller.tap3.value = false;
                      controller.tap4.value = true;
                      controller.tap5.value = false;
                      controller.tap6.value = false;
                    },
                    color:controller.tap4.value? Colors.blue[500]: Colors.grey.withOpacity(0.3),
                    child: 'Clothing',),
                    const SizedBox(width: 5,),

                    CommonButton(
                      onTap: (){
                        controller.tap.value= false;
                        controller.tap2.value= false;
                        controller.tap3.value = false;
                        controller.tap4.value = false;
                        controller.tap5.value = true;
                        controller.tap6.value = false;
                      },
                      color:controller.tap5.value? Colors.blue[500]: Colors.grey.withOpacity(0.3),
                     child: 'Digital product',),
                    const SizedBox(width: 5,),

                    CommonButton(
                      onTap: (){
                        controller.tap.value= false;
                        controller.tap2.value= false;
                        controller.tap3.value = false;
                        controller.tap4.value = false;
                        controller.tap5.value = false;
                        controller.tap6.value = true;
                      },
                      color:controller.tap6.value? Colors.blue[500]: Colors.grey.withOpacity(0.3),
                     child: 'other'),
                ],),
              ),
              const SizedBox(height: 20,),

              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Total Price', style: boldtext,),
                    Text('\$48.80', style: boldtext.copyWith(fontSize: 15,fontWeight: FontWeight.bold),),
                  ],
                ),
              ),
              const SizedBox(height: 30,),
            submitbutton(lable: 'Submit',ontap: (){},)
            ],
          ),
        ),
      ),
    );
  }




}