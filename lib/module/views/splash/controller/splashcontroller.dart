import 'dart:async';

import 'package:university_details/module/helper/api_helper.dart';
import 'package:get/get.dart';

class Splashcontroller extends GetxController{
  @override
  void onInit() async{
    // TODO: implement onInit
    super.onInit();
    APIHelper.apiHelper.fetchdata();
   Timer(Duration(seconds: 3), () {
     Get.offAllNamed('/');
   });
  }
}