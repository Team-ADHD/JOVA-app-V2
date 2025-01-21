import 'package:get/get.dart';

class Jova_Controller extends GetxController{

  static Jova_Controller get to => Get.find();

  var bottomnavigationbarindex = 0.obs;
  String major_filter = "DESIGN";
  int writeindex = 0;


  void change_bottomnavigationbarindex(index){
    bottomnavigationbarindex.value = index;
  }

  void change_writeindex(index){
    writeindex = index;
    update();
  }

  void changemajor_filter(major){
    major_filter = major;
    update();
  }

}