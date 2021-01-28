import 'package:auth_getx_firebase/controller/authBinding.dart';
import 'package:auth_getx_firebase/view/sign_in.dart';
import 'package:auth_getx_firebase/view/sign_up.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: AuthBinding(),
      debugShowCheckedModeBanner: false,
      title: 'Authenticaion',
      home: SignUp(),

    );
  }
}

