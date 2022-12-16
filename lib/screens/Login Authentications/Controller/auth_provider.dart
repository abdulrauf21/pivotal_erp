import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pivotal_erp/screens/Login%20Authentications/local_data_source/user_local_data_source.dart';

class AuthProvider extends ChangeNotifier {
  FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;
  UserLocalDataSource userLocalDataSource = UserLocalDataSource();
  bool isLoading = false;

  Future<bool> signUpWithEmailAndPassword(
      String email, String password, BuildContext context) async {
    try {
      isLoading = true;
      notifyListeners();
      final result = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      final uId = result.user!.uid;
      final _email = result.user!.email!;

      saveUserInfoIntoDataBase(_email, uId, password);
      final snackbar = SnackBar(
          content: Text("Account created successfully, click on login now"));
      ScaffoldMessenger.of(context).showSnackBar(snackbar);
      isLoading = false;
      notifyListeners();
      return true;
    } on FirebaseAuthException catch (e) {
      isLoading = false;
      notifyListeners();
      if (e.code == 'weak-password') {
        final snackbar = SnackBar(content: Text("Your password is too weak"));
        ScaffoldMessenger.of(context).showSnackBar(snackbar);
      } else if (e.code == 'email-already-in-use') {
        final snackbar = SnackBar(
            content: Text("The account for this email already exist."));
        ScaffoldMessenger.of(context).showSnackBar(snackbar);
        print('The account for this email already exist.');
      }
      return false;
    } catch (e) {
      isLoading = false;
      notifyListeners();

      return false;
    }
  }

  Future<bool> signInWithEmailAndPassword(
      String email, String password, BuildContext context) async {
    try {
      isLoading = true;
      notifyListeners();
      // await Future.delayed(Duration(seconds: 5));
      final result = await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      isLoading = false;
      notifyListeners();
      await userLocalDataSource.saveUserId(result.user!.uid);
      return true;
    } on FirebaseAuthException catch (e) {
      isLoading = false;
      notifyListeners();
      if (e.code == 'user-not-found') {
        print('No user found for this email.');
        final snackbar =
            SnackBar(content: Text("No user found for this email"));
        ScaffoldMessenger.of(context).showSnackBar(snackbar);
      } else if (e.code == 'wrong-password') {
        print("Wrong email or password");
        final snackbar =
            SnackBar(content: Text("Email or password you entered is wrong"));
        ScaffoldMessenger.of(context).showSnackBar(snackbar);
      }
      return false;
    } catch (e) {
      isLoading = false;
      notifyListeners();
      return false;
    }
  }

  Future<void> saveUserInfoIntoDataBase(
      String email, String uId, String password) async {
    await _firebaseFirestore.collection("users").add({
      "email": email,
      "userId": uId,
      "password": password,
    });
  }
}
