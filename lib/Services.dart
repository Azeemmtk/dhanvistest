import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Firebaseservices {
  Future<void> signupwithemailpasswd(
      {required String email,
      required String password,
      required BuildContext contxt}) async {
    try {
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      ScaffoldMessenger.of(contxt)
          .showSnackBar(SnackBar(content: Text(e.message!)));
    } catch (e) {
      ScaffoldMessenger.of(contxt)
          .showSnackBar(SnackBar(content: Text('Something went wrong')));
    }
  }

  Future<User?> signinwithemailpasswd(
      {required String email,
      required String password,
      required BuildContext contxt}) async {
    try {
      UserCredential user = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      return user.user!;
    } on FirebaseAuthException catch (e) {
      ScaffoldMessenger.of(contxt)
          .showSnackBar(SnackBar(content: Text(e.message!)));
    } catch (e) {
      ScaffoldMessenger.of(contxt)
          .showSnackBar(SnackBar(content: Text('Something went wrong')));
    }
  }
}
