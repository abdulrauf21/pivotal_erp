import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:pivotal_erp/screens/Login%20Authentications/local_data_source/user_local_data_source.dart';
import 'package:pivotal_erp/screens/Login%20Authentications/model/user_model.dart';

class UserProvider extends ChangeNotifier {
  UserLocalDataSource userLocalDataSource = UserLocalDataSource();
  bool isLoading = false;
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  Future<bool> login(UserModel userModel) async {
    isLoading = false;
    notifyListeners();
    final snapshot = await firestore
        .collection("user")
        .where("email", isEqualTo: userModel.email)
        .where("password", isEqualTo: userModel.password)
        .get();

    if (snapshot.docs.isNotEmpty) {
      isLoading = false;
      notifyListeners();
      await userLocalDataSource.saveUserId(snapshot.docs[0].id);
      return true;
    } else {
      isLoading = false;
      notifyListeners();
      return false;
    }
  }
}
