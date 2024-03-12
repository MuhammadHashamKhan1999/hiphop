import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

showToast(String msg) {
  Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      textColor: Colors.white,
      backgroundColor: Colors.black38,
      fontSize: 16.0,
  );

  showSnackBar(String title, String msg, bool isForError) {
    Get.snackbar(
      title,
      msg,
      backgroundColor: isForError ? Colors.red : Colors.green,
      colorText: Colors.white,
    );
  }
}