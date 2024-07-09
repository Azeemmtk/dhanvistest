import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:max/Screens/login%20screen.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Signin(),
  ));
}
