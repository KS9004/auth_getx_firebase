import 'package:auth_getx_firebase/view/sign_in.dart';
import 'package:auth_getx_firebase/view/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Authenticaion',
      home: SignIn(),

    );
  }
}

