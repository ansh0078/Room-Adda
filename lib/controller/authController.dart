import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:roomadda/model/userModel.dart';
import 'package:roomadda/pages/auth/authPage.dart';
import 'package:roomadda/widgets/bottonNav.dart';

class AuthController extends GetxController {
  final auth = FirebaseAuth.instance;
  final db = FirebaseFirestore.instance;
  RxBool isLoading = false.obs;

  Future<void> login(String email, String password) async {
    try {
      isLoading.value = true;
      await auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      Get.to(() => BottomNav());
      print("login");
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    } catch (e) {
      print(e);
    }
    isLoading.value = false;
  }

  Future<void> createUser(String email, String password, String name) async {
    try {
      isLoading.value = true;
      await auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      await initUser(email, name);
      print("Account Created...");
      Get.to(() => BottomNav());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
    isLoading.value = false;
  }

  Future<void> logoutUser() async {
    await auth.signOut();
    Get.to(AuthPage);
  }

  Future<void> initUser(String email, String name) async {
    var newUser = UserModel(
      email: email,
      name: name,
      id: auth.currentUser!.uid,
    );
    try {
      await db.collection("users").doc(auth.currentUser!.uid).set(
            newUser.toJson(),
          );
    } catch (e) {
      print(e);
    }
  }
}
