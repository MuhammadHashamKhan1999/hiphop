import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:hiphop/route/appRoute.dart';
import 'package:hiphop/storage.dart';
import 'package:hiphop/utils/constants.dart';
import 'package:hiphop/utils/dialog_utility.dart';
import 'package:hiphop/utils/toast_and_snackbar_utility.dart';
import 'package:http/http.dart';
import 'package:get/get.dart';

void signUpAPI(BuildContext context, String firstName, String lastName, String mobileNo, String email, String password, String confirmPassword) async {
  DialogUtility.showLoaderDialog(context);

  try {
    var url = Constants.signUpUrl;

    Map<String, String> headers = {"Content-Type": "application/json"};
    Map data = {
      Constants.firstName: firstName,
      Constants.lastName: lastName,
      Constants.contactNumber: mobileNo,
      Constants.email: email,
      Constants.password: password,
      Constants.device: Platform.isIOS ? "iOS" : "android",
      Constants.passwordConfirmation: confirmPassword,
      Constants.deviceToken: Constants.fcmToken,
    };

    String requestBody = json.encode(data);
    var response = await post(Uri.parse(url), headers: headers, body: requestBody);

    DialogUtility.closeLoaderDialog(context);

  if (response.statusCode == 201) {
      Map<String, dynamic> data = json.decode(response.body);
      String msg = data['message'];
      showToast(msg);
      Get.toNamed(AppRoute.otp_screen);
    } else {
      Map<String, dynamic> data = json.decode(response.body);
      String msg = data['message'];
      DialogUtility.showErrorDialog(context, 'Error', msg);
    }
  } catch (e) {
    DialogUtility.closeLoaderDialog(context);
  }
}

void loginAPI(BuildContext context, String email, String password, String fcmToken) async {
  DialogUtility.showLoaderDialog(context);

  var url = Constants.logInUrl;

  Map<String, String> headers = {"Content-Type": "application/json"};
  Map data = {
    Constants.email: email,
    Constants.password: password,
    Constants.device: Platform.isIOS ? "iOS" : "android",
    Constants.deviceToken: Constants.fcmToken,
  };

  String requestBody = json.encode(data);
  var response = await post(Uri.parse(url), headers: headers, body: requestBody);
  DialogUtility.closeLoaderDialog(context);

  try {

  if (response.statusCode == 200) {
      Map<String, dynamic> data = json.decode(response.body);
      String msg = data['message'];
      String token = data['token'];
      Storage.saveToken(token);
      Storage.saveIsLoggedIn(true);
      showToast(msg);
      Get.offAllNamed(AppRoute.bottomBarNavigationScreen);
    } else {
      Map<String, dynamic> data = json.decode(response.body);
      String msg = data['message'];
      DialogUtility.showErrorDialog(context, 'Error', msg);
    }
  }catch (e){
    DialogUtility.showErrorDialog(context, 'error'.tr, e.toString());
  }
}

// void logOutAPI(BuildContext context) async {
//   DialogUtility.showLoaderDialog(context);
//
//   try {
//     var url = Constants.baseUrl + Constants.logOut;
//
//     Map<String, String> headers = {
//       "Content-Type": "application/json",
//       "Accept": "application/json",
//       Constants.authorization: Storage.getToken()
//     };
//
//     var response = await get(Uri.parse(url), headers: headers);
//     Storage.saveIsLoggedIn(false);
//     DialogUtility.closeLoaderDialog(context);
//     Get.offAllNamed(AppRoute.loginScreen);
//   } catch (e) {
//     DialogUtility.closeLoaderDialog(context);
//   }
// }