import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';


class AuthController extends GetxController{
  FirebaseAuth _auth = FirebaseAuth.instance;

 void createUser(String email, String password)async{
   try{
    await _auth.createUserWithEmailAndPassword(email: email, password: password);
   }catch(e){
     Get.snackbar("Error creating account", e.message,snackPosition: SnackPosition.BOTTOM);
   }
 }
 void signInUser(String email, String password) async{
   try{
    await _auth.signInWithEmailAndPassword(email: email, password: password);
   }catch(e){
     Get.snackbar("Errro while login", e.message,snackPosition: SnackPosition.BOTTOM);
   }

 }
 void signOutUser()async{
   try{
     await _auth.signOut();
   }catch(e){
     Get.snackbar("Error while signing Out", e.message,snackPosition: SnackPosition.BOTTOM);
   }
 }
}