import 'dart:developer';

import 'package:get/get.dart';

class HomeController extends GetxController{

  RxList<bool> isselected_send = [true,false].obs;
  RxList<bool> isselected_am = [true,false].obs;
  RxList<bool> isselected_time = [true,false].obs;

  RxInt index = 0.obs;
RxBool tap = false.obs;
  RxBool tap2 = false.obs;
  RxBool tap3 = false.obs;
  RxBool tap4 = false.obs;
  RxBool tap5 = false.obs;
  RxBool tap6 = false.obs;
  RxBool send = false.obs;
  RxBool fetchme = false.obs;
  RxBool am = false.obs;
  RxBool pm = false.obs;
  RxBool time1 = false.obs;
  RxBool time2 = false.obs;


//    send(int newindex){
//      log('message');
//     for(int index = 0; index < isselected_send.length;index++){
//       if(index ==newindex ){
//         isselected_send[index] =true;
//         log(isselected_send.toString());
//       }else {
//         isselected_send[index] = false;
//       }
// update();
//     }
//
//   }
//   am(int newindex){
//     log('message');
//     for(int index = 0; index < isselected_am.length;index++){
//       if(index ==newindex ){
//         isselected_am[index] =true;
//         log(isselected_am.toString());
//       }else {
//         isselected_am[index] = false;
//       }
//       update();
//     }
//
//   }
//   time(int newindex){
//     log('message');
//     for(int index = 0; index < isselected_time.length;index++){
//       if(index ==newindex ){
//         isselected_time[index] =true;
//         log(isselected_time.toString());
//       }else {
//         isselected_time[index] = false;
//       }
//       update();
//     }
//
//   }





}