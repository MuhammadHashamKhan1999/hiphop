// ignore_for_file: file_names

import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:get/get.dart';
import 'package:hiphop/utils/colors_constant.dart';

class DialogUtility {

  static void showLoaderDialog(BuildContext context) {
    AlertDialog alert = AlertDialog(
      backgroundColor: Colors.white,
      content: Row(
        children: [
          const CircularProgressIndicator(
            color: Color(0xFFAB3035),
          ),
          Container(
              margin: const EdgeInsets.only(left: 12),
              child: const Text('Please wait...')),
        ],
      ),
    );
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  static void closeLoaderDialog(BuildContext context) {
    Navigator.pop(context);
  }

  static showImagePickerSelectionDialog(BuildContext context, String title, String msg, {ValueChanged? onChanged}) {
    // Widget galleryButton = TextButton(
    //   child: const Text("Gallery", style: TextStyle(color: Color(0xFFAB3035)),),
    //   onPressed: () {
    //     Navigator.of(context).pop('gallery');
    //     onChanged!('gallery');
    //   },
    // );
    // Widget cameraButton = TextButton(
    //   child: const Text('Camera', style: TextStyle(color: Color(0xFFAB3035)),),
    //   onPressed: () {
    //     Navigator.of(context).pop('camera');
    //     onChanged!('camera');
    //   },
    // );

    Widget cameraButton =  GestureDetector(
      onTap: () {
        Navigator.of(context).pop('camera');
        onChanged!('camera');
      },
      child: Container(
        height: 44,
        width: 120,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey[300]!),
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: const Center(
          child: Text(
            'Camera',
            style: TextStyle(fontSize: 16, color: Colors.grey, fontWeight: FontWeight.w700),
          ),
        ),
      ),
    );
    Widget galleryButton =  GestureDetector(
      onTap: () {
        Navigator.of(context).pop('gallery');
        onChanged!('gallery');
      },
      child: Container(
        height: 44,
        width: 120,
        decoration: BoxDecoration(
          color: AppColors.buttonBackgroundColor,
          borderRadius: BorderRadius.circular(15.0),
      ),
        child: const Center(
          child: Text(
            'Gallery',
            style: TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      title: Text(title, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700)),
      content: Text(msg),
      actions: [
        cameraButton,
        const SizedBox(width: 2),
        galleryButton,
      ],
    );
    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  static showErrorDialog(BuildContext context, String title, String msg) {
    Widget continueButton = TextButton(
      child: const Text("OK"),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );
    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      title: Text(title),
      content: Text(msg),
      actions: [
        continueButton,
      ],
    );
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  static showConfirmationDialog(BuildContext context, String title, String msg, {ValueChanged? onChanged, String? text1, String? text2}) {
    // set up the buttons
    Widget okButton = TextButton(
      child: Text(text1 ?? "Yes"),
      onPressed: () {
        Navigator.of(context).pop('yes');
        onChanged!('yes');
      },
    );
    Widget cancelButton = TextButton(
      child: Text(text2 ?? "No"),
      onPressed: () {
        Navigator.of(context).pop('no');
        onChanged!('no');
      },
    );
    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0),),
      title: Text(title),
      content: Text(msg),
      actions: [
        cancelButton,
        okButton,
      ],
    );
    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  static showLogOutConfirmationDialog(BuildContext context, String title, String msg, {ValueChanged? onChanged, String? text1, String? text2}) {
    // set up the buttons
    Widget okButton = TextButton(
      child: Text(text1 ?? "Yes"),
      onPressed: () {
        onChanged!('yes');
      },
    );
    Widget cancelButton = TextButton(
      child: Text(text2 ?? "No"),
      onPressed: () {
        onChanged!('no');
      },
    );
    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0),),
      title: Text(title),
      content: Text(msg),
      actions: [
        cancelButton,
        okButton,
      ],
    );
    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  static showAlertDialog(BuildContext context, String title, String msg, {ValueChanged? onChanged, String text = ''}) {
    // set up the buttons
    Widget cancelButton = ElevatedButton(
      child: const Text("No"),
      onPressed: () {
        Navigator.of(context).pop('Failure');
        onChanged!('Failure');
      },
    );
    Widget continueButton = ElevatedButton(
      child: Text(text.isNotEmpty ? text : "Yes"),
      onPressed: () {
        Navigator.of(context).pop('Success');
        onChanged!('Success');
      },
    );
    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text(title),
      content: Text(msg),
      actions: [
        cancelButton,
        continueButton,
      ],
    );
    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

}
