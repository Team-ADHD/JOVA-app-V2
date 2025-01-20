import 'package:get/get.dart';

class Jova_Controller extends GetxController{

  static Jova_Controller get to => Get.find();

  var selectindex = 0.obs;

  void changeindex(index){
    selectindex.value = index;
  }

}