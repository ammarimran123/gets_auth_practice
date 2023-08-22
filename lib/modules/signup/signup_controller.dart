import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../routes/app_pages.dart';

class SignUpController extends GetxController {
  final getStorge = GetStorage();
  final formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController mobileNoController = TextEditingController();
   bool _selected=false;
  //var name = "";
  @override
  void onInit() {
    super.onInit();
    //name = getStorge.read("name");
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  bool get selected => _selected;

  set selected(bool value) {
    _selected = value;
    update();
  }

  bool isSelected(){
    return _selected;
  }
  void setSelected(bool val){
    _selected=val;
    update;
    update();
  }

}
