import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../routes/app_pages.dart';

class SplashController extends GetxController {
  final getStorge = GetStorage();
  late String variable="ammar";
  Timer? _t;
  @override
  void onInit() {
    super.onInit();
    // _t = Timer(const Duration(seconds: 3), () {
    //   Get.offAllNamed(Routes.HOME);
    //   disopeTimer();
    // });
  }

  @override
  void onReady() {
    super.onReady();
    // if (getStorge.read("id") != null) {
    //   Future.delayed(const Duration(milliseconds: 3000), () {
    //     Get.offAllNamed(Routes.HOME);
    //   });
    // } else {
    //   Get.offAllNamed(Routes.HOME);
    //     //Get.offAllNamed(Routes.LOGIN);
    // }
      Future.delayed(const Duration(seconds: 2), () {
        Get.offAllNamed(Routes.SIGNUP);
      });
    //Get.offAllNamed(Routes.HOME);
  }

  @override
  void onClose() {
    super.onClose();
  }

  void disopeTimer() {
    _t?.cancel;
    _t = null;
  }

}
