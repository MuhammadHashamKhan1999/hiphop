// ignore_for_file: avoid_print
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  final FirebaseAuth auth = FirebaseAuth.instance;
  RxBool isLoading = false.obs;
  User? user;

  Future<User?> signInWithGoogle() async {
    try {
      GoogleAuthProvider googleProvider = GoogleAuthProvider();
      final UserCredential userCredential = await auth.signInWithProvider(googleProvider);
      user = userCredential.user;
      return user;
    } catch (error) {
      return null;
    }
  }

  Future<void> signOut() async {
    try {
      await auth.signOut();
    } catch (error) {
      print(error);
    }
  }
}

