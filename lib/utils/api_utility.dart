import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:hiphop/Models/app_user.dart';
import 'package:hiphop/route/appRoute.dart';
import 'package:hiphop/storage.dart';
import 'package:hiphop/utils/constants.dart';
import 'package:hiphop/utils/dialog_utility.dart';
import 'package:hiphop/utils/toast_and_snackbar_utility.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;
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
      Get.toNamed(AppRoute.otpScreen);
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
    Constants.usernameOrEmail: email,
    Constants.password: password,
    Constants.device: Platform.isIOS ? "iOS" : "android",
    Constants.deviceToken: Constants.fcmToken,
  };

  String requestBody = json.encode(data);

  var response = await post(Uri.parse(url), headers: headers, body: requestBody);

  try {
    if (response.statusCode == 200) {
        Map<String, dynamic> data = json.decode(response.body);
        String msg = data['message'];
        String token = data['token'];
        Storage.saveToken(token);
        Storage.saveIsLoggedIn(true);
        showToast(msg);
        fetchUserDataAPI(context);
      } else {
        DialogUtility.closeLoaderDialog(context);
        Map<String, dynamic> data = json.decode(response.body);
        String msg = data['message'];
        DialogUtility.showErrorDialog(context, 'Error', msg);
      }
    } catch (e){
    DialogUtility.closeLoaderDialog(context);
    DialogUtility.showErrorDialog(context, 'Error', e.toString());
  }
}

void logOutAPI(BuildContext context) async {
  DialogUtility.showLoaderDialog(context);

  try {
    var url = Constants.logOutUrl;

    Map<String, String> headers = {
      "Content-Type": "application/json",
      "Accept": "application/json",
      Constants.authorization: Storage.getToken()
    };

    var response = await get(Uri.parse(url), headers: headers);
    Storage.saveIsLoggedIn(false);
    DialogUtility.closeLoaderDialog(context);
    Get.offAllNamed(AppRoute.loginScreen);
  } catch (e) {
    DialogUtility.closeLoaderDialog(context);
  }
}

void fetchUserDataAPI(BuildContext context) async {
  // DialogUtility.showLoaderDialog(context);

  try {
    var url = Constants.loggedUserUrl;

    Map<String, String> headers = {
      "Content-Type": "application/json",
      "Accept": "application/json",
      Constants.authorization: Storage.getToken()
    };

    var response = await get(Uri.parse(url), headers: headers);
    DialogUtility.closeLoaderDialog(context);

    if (response.statusCode == 200) {
      Map<String, dynamic> userData = json.decode(response.body);
      AppUser user = AppUser.fromJson(userData);
      Storage.saveUser(user);
      Get.offAllNamed(AppRoute.bottomBarNavigationScreen);
    } else {
      DialogUtility.showErrorDialog(context, 'Error', 'An error occurred');
    }
  } catch (e) {
    DialogUtility.showErrorDialog(context, 'Error', e.toString());
  }
}

void updateProfileAPI(BuildContext context, String firstName, String lastName, String mobileNo, String email, String username, String filePath) async {
  DialogUtility.showLoaderDialog(context);

  try {
    var url = Constants.updateProfileUrl;

    var request = MultipartRequest("POST", Uri.parse(url));

    request.headers['Authorization'] = Storage.getToken();

    request.fields[Constants.firstName] = firstName;
    request.fields[Constants.lastName] = lastName;
    request.fields[Constants.contactNumber] = mobileNo;
    request.fields[Constants.email] = email;
    request.fields[Constants.method] = Constants.put;
    request.fields[Constants.username] = username;

    if (filePath.isNotEmpty) {
      var pic = await http.MultipartFile.fromPath(Constants.profilePicture, filePath);
      request.files.add(pic);
    }

    var response = await request.send();
    var responseData = await response.stream.toBytes();
    var responseBody = String.fromCharCodes(responseData);

    DialogUtility.closeLoaderDialog(context);

    if (response.statusCode == 200) {
      Map<String, dynamic> data = json.decode(responseBody);
      AppUser user = AppUser.fromJson(data['user']);
      Storage.saveUser(user);
      String msg = data['message'];
      showToast(msg);
      Get.back();
    } else {
      Map<String, dynamic> data = json.decode(responseBody);
      String msg = data['message'];
      DialogUtility.showErrorDialog(context, 'Error', msg);
    }
  } catch (e) {
    DialogUtility.closeLoaderDialog(context);
  }
}