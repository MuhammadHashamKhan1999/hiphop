import 'dart:io';

import 'package:email_validator/email_validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hiphop/Models/app_user.dart';
import 'package:hiphop/Storage.dart';
import 'package:hiphop/utils/api_utility.dart';
import 'package:hiphop/utils/colors_constant.dart';
import 'package:hiphop/utils/constants.dart';
import 'package:hiphop/utils/dialog_utility.dart';
import 'package:hiphop/utils/dimensions.dart';
import 'package:image_picker/image_picker.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {

  AppUser user = Storage.getUser();

  final ImagePicker _picker = ImagePicker();
  XFile? _imgFile;

  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _userNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _mobileNoController = TextEditingController();

  @override
  void initState() {
    super.initState();

    _firstNameController.text = user.firstName!;
    _lastNameController.text = user.lastName!;
    _userNameController.text = user.username ?? "";
    _emailController.text = user.email!;
    _mobileNoController.text = user.phone!;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 600,
                  child: Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/homepagebg.png"),
                          fit: BoxFit.cover
                      ),
                    ),
                  ),
                )
              ],
            ),
            Positioned(
              top: 25,
              child: InkWell(
                onTap: () {
                  Get.back();
                },
                child: Container(
                  margin: const EdgeInsets.fromLTRB(20, 15, 10, 15),
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      color: AppColors.buttonBackgroundColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: const Center(
                    child: Icon(
                      Icons.arrow_back_outlined,
                      color: AppColors.textWhiteColor,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 80),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      const Text(
                        "Edit Profile",
                        style: TextStyle(
                          color: AppColors.textWhiteColor,
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: Dimension.height20),
                      InkWell(
                        onTap: () => _showImagePicker(),
                        child: Stack(
                          children: [
                            Container(
                              width: 120,
                              height: 120,
                              decoration: ShapeDecoration(
                                color: Colors.black26,
                                image: _imgFile != null ? DecorationImage(image: FileImage(File(_imgFile!.path)), fit: BoxFit.cover) : DecorationImage(
                                  image: NetworkImage(user.profilePicture != null ? Constants.imageBaseUrl + user.profilePicture! : user.profilePhotoUrl!),
                                  fit: BoxFit.cover,
                                ),
                                shape: const OvalBorder(),
                              ),
                            ),
                            const Positioned(
                              left: 0,
                              bottom: 0,
                              right: 0,
                              child: Icon(
                                Icons.camera_enhance_outlined,
                                color: Color(0xFFAB3035),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: Dimension.height20),
                      SizedBox(
                        width: Dimension.screenWidth*0.95 ,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: TextField(
                            controller: _firstNameController,
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.text,
                            cursorColor: AppColors.buttonBackgroundColor,
                            style: const TextStyle(color: AppColors.textWhiteColor),
                            decoration: InputDecoration(
                                enabled: true,
                                prefixIcon: const Icon(Icons.text_snippet_outlined, color: Colors.white, size: 20),
                                contentPadding: const EdgeInsets.symmetric(vertical: Constants.textFieldHeight, horizontal: Constants.textFieldWidth),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: AppColors.buttonBackgroundColor,
                                      width: 2.0,
                                      style: BorderStyle.solid,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0)),
                                // Enabled Border Setting
                                enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: AppColors.greyColor,
                                        width: 2.0,
                                        style: BorderStyle.solid),
                                    borderRadius: BorderRadius.circular(12.0)),
                                border: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: AppColors.buttonBackgroundColor,
                                        width: 2.0,
                                        style: BorderStyle.solid
                                    ),
                                    borderRadius: BorderRadius.circular(12.0)),
                                // Error Border Setting
                                errorBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: AppColors.buttonBackgroundColor,
                                    width: 2.0,
                                  ),
                                ),
                                labelText: "First Name",
                                alignLabelWithHint: false,
                                labelStyle: const TextStyle(
                                    color: AppColors.textWhiteColor
                                ),
                                floatingLabelBehavior: FloatingLabelBehavior.auto,
                                isCollapsed: false
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: Dimension.screenWidth*0.95 ,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: TextField(
                            controller: _lastNameController,
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.text,
                            cursorColor: AppColors.buttonBackgroundColor,
                            style: const TextStyle(color: AppColors.textWhiteColor),
                            decoration: InputDecoration(
                                enabled: true,
                                prefixIcon: const Icon(Icons.text_snippet_outlined, color: Colors.white, size: 20),
                                contentPadding: const EdgeInsets.symmetric(vertical: Constants.textFieldHeight, horizontal: Constants.textFieldWidth),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: AppColors.buttonBackgroundColor,
                                      width: 2.0,
                                      style: BorderStyle.solid,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0)),
                                // Enabled Border Setting
                                enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: AppColors.greyColor,
                                        width: 2.0,
                                        style: BorderStyle.solid),
                                    borderRadius: BorderRadius.circular(12.0)),
                                border: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: AppColors.buttonBackgroundColor,
                                        width: 2.0,
                                        style: BorderStyle.solid
                                    ),
                                    borderRadius: BorderRadius.circular(12.0)),
                                // Error Border Setting
                                errorBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: AppColors.buttonBackgroundColor,
                                    width: 2.0,
                                  ),
                                ),
                                labelText: "Last Name",
                                alignLabelWithHint: false,
                                labelStyle: const TextStyle(
                                    color: AppColors.textWhiteColor
                                ),
                                floatingLabelBehavior: FloatingLabelBehavior.auto,
                                isCollapsed: false
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: Dimension.screenWidth*0.95 ,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: TextField(
                            controller: _userNameController,
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.text,
                            cursorColor: AppColors.buttonBackgroundColor,
                            style: const TextStyle(color: AppColors.textWhiteColor),
                            decoration: InputDecoration(
                                enabled: true,
                                prefixIcon: const Icon(Icons.account_circle_outlined, color: Colors.white, size: 20),
                                contentPadding: const EdgeInsets.symmetric(vertical: Constants.textFieldHeight, horizontal: Constants.textFieldWidth),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: AppColors.buttonBackgroundColor,
                                      width: 2.0,
                                      style: BorderStyle.solid,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0)),
                                // Enabled Border Setting
                                enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: AppColors.greyColor,
                                        width: 2.0,
                                        style: BorderStyle.solid),
                                    borderRadius: BorderRadius.circular(12.0)),
                                border: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: AppColors.buttonBackgroundColor,
                                        width: 2.0,
                                        style: BorderStyle.solid
                                    ),
                                    borderRadius: BorderRadius.circular(12.0)),
                                // Error Border Setting
                                errorBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: AppColors.buttonBackgroundColor,
                                    width: 2.0,
                                  ),
                                ),
                                labelText: "Username",
                                alignLabelWithHint: false,
                                labelStyle: const TextStyle(
                                    color: AppColors.textWhiteColor
                                ),
                                floatingLabelBehavior: FloatingLabelBehavior.auto,
                                isCollapsed: false
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: Dimension.screenWidth*0.95 ,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: TextField(
                            controller: _emailController,
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.emailAddress,
                            cursorColor: AppColors.buttonBackgroundColor,
                            style: const TextStyle(color: AppColors.textWhiteColor),
                            decoration: InputDecoration(
                              enabled: true,
                              contentPadding: const EdgeInsets.symmetric(vertical: Constants.textFieldHeight, horizontal: Constants.textFieldWidth),
                              prefixIcon: const Icon(Icons.email_outlined, color: Colors.white, size: 20),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: AppColors.buttonBackgroundColor,
                                    width: 2.0,
                                    style: BorderStyle.solid,
                                  ),
                                  borderRadius: BorderRadius.circular(12.0)),
                              // Enabled Border Setting
                              enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: AppColors.greyColor,
                                      width: 2.0,
                                      style: BorderStyle.solid),
                                  borderRadius: BorderRadius.circular(12.0)),
                              border: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: AppColors.buttonBackgroundColor,
                                      width: 2.0,
                                      style: BorderStyle.solid
                                  ),
                                  borderRadius: BorderRadius.circular(12.0)),
                              // Error Border Setting
                              errorBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: AppColors.buttonBackgroundColor,
                                  width: 2.0,
                                ),
                              ),
                              labelText: "Enter Your Email",
                              alignLabelWithHint: false,
                              labelStyle: const TextStyle(
                                  color: AppColors.textWhiteColor
                              ),
                              floatingLabelBehavior: FloatingLabelBehavior.auto,
                              isCollapsed: false,

                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: Dimension.screenWidth*0.95 ,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: TextField(
                            controller: _mobileNoController,
                            textInputAction: TextInputAction.done,
                            keyboardType: TextInputType.number,
                            cursorColor: AppColors.buttonBackgroundColor,
                            style: const TextStyle(color: AppColors.textWhiteColor),
                            decoration: InputDecoration(
                              enabled: true,
                              contentPadding: const EdgeInsets.symmetric(vertical: Constants.textFieldHeight, horizontal: Constants.textFieldWidth),
                              prefixIcon: const Icon(Icons.phone_android_outlined, color: Colors.white, size: 20),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: AppColors.buttonBackgroundColor,
                                    width: 2.0,
                                    style: BorderStyle.solid,
                                  ),
                                  borderRadius: BorderRadius.circular(12.0)),
                              // Enabled Border Setting
                              enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: AppColors.greyColor,
                                      width: 2.0,
                                      style: BorderStyle.solid),
                                  borderRadius: BorderRadius.circular(12.0)),
                              border: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: AppColors.buttonBackgroundColor,
                                      width: 2.0,
                                      style: BorderStyle.solid
                                  ),
                                  borderRadius: BorderRadius.circular(12.0)),
                              // Error Border Setting
                              errorBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: AppColors.buttonBackgroundColor,
                                  width: 2.0,
                                ),
                              ),
                              labelText: "Phone No.",
                              alignLabelWithHint: false,
                              labelStyle: const TextStyle(
                                  color: AppColors.textWhiteColor
                              ),
                              floatingLabelBehavior: FloatingLabelBehavior.auto,
                              isCollapsed: false,

                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: Dimension.height20),
                      Container(
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.zero
                        ),
                        child: SizedBox(
                          width: Dimension.screenWidth*0.85,
                          child: ElevatedButton(
                            style: ButtonStyle(
                                shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0))),
                                backgroundColor: const MaterialStatePropertyAll(AppColors.buttonBackgroundColor),
                                mouseCursor: MaterialStateMouseCursor.clickable,
                                shadowColor: const MaterialStatePropertyAll(AppColors.buttonBackgroundLightColor),
                                animationDuration: const Duration(milliseconds: 1000)
                            ),
                            onPressed: (){
                              if(_isValidated()) {
                                String firstName = _firstNameController.text.trim();
                                String lastName = _lastNameController.text.trim();
                                String mobileNo = _mobileNoController.text.trim();
                                String userName = _userNameController.text.trim();
                                String email = _emailController.text.trim();
                                String filePath = _imgFile != null ? _imgFile!.path : "";
                                updateProfileAPI(context, firstName, lastName, mobileNo, email, userName, filePath);
                              }
                            },
                            child: const Text("Submit", style: TextStyle(color: AppColors.textWhiteColor)),
                          ),
                        ),
                      ),
                      SizedBox(height: Dimension.height30),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // private method
  void _showImagePicker() {
    DialogUtility.showImagePickerSelectionDialog(
        context, "Select Photo ", "Select photo using", onChanged: (value) {
      if (value != null) {
        _takePhoto(
            value == 'camera' ? ImageSource.camera : ImageSource.gallery);
      }
    });
  }

 void _takePhoto(ImageSource source) async {
    final pickedFinal = await _picker.pickImage(source: source, imageQuality: 10);
    if (pickedFinal != null) {
      setState(() {
        _imgFile = pickedFinal;
      });
    }
  }

  bool _isValidated() {
    String firstName = _firstNameController.text.trim();
    String lastName = _lastNameController.text.trim();
    String mobileNo = _mobileNoController.text.trim();
    String userName = _userNameController.text.trim();
    String email = _emailController.text.trim();

    if (firstName.isEmpty) {
      DialogUtility.showErrorDialog(context, "Error", 'Please enter your first name');
      return false;
    } else if (lastName.isEmpty) {
      DialogUtility.showErrorDialog(context, "Error", 'Please enter your last name');
      return false;
    } else if (userName.isEmpty) {
      DialogUtility.showErrorDialog(context, "Error", 'Please enter username');
      return false;
    } else if (email.isNotEmpty && !EmailValidator.validate(email)) {
      DialogUtility.showErrorDialog(context, "Error", 'Please enter your email address');
      return false;
    } else if (mobileNo.isEmpty) {
      DialogUtility.showErrorDialog(context, "Error", 'Please enter your contact number');
      return false;
    }

    return true;
  }
}
