import 'package:auth_getx_firebase/controller/auth_controller.dart';
import 'package:auth_getx_firebase/view/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUp extends GetWidget<AuthController> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent,
      body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
            SizedBox(height: 250,), // Image.sasset('assets/sign_up2.svg',width: 400,),
            Expanded(
              child: Container(
                height: 600,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(40.0),topRight: Radius.circular(40.0))
                ),
                child: Padding(
                  padding: EdgeInsets.only(top: 30.0,left: 20.0,right: 20.0),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                       Text('Sign Up',style: GoogleFonts.aBeeZee(textStyle: TextStyle(
                           color: Color(0xff003459),
                           fontSize: 60.0,
                           fontWeight: FontWeight.bold
                       ),)
                       ),
                        SizedBox(height: 45.0,),
                        Text("Email",style: GoogleFonts.exo2(
                          textStyle: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        ),
                        SizedBox(height: 5.0,),
                        TextFormField(
                          controller: emailController,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            fillColor: Color(0xffFEF3F1),
                            filled: true,
                            hintStyle: GoogleFonts.exo2(
                              textStyle: TextStyle(color:Color(0xffFC7D90)),
                            ),
                            prefixIcon: Icon(Icons.email_rounded,color:Color(0xffFC7D90),),
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            hintText: 'Enter Email Here',
                          ),
                          autofocus: false,
                        ),
                        SizedBox(height: 20.0,),
                        Text("Password",style: GoogleFonts.exo2(
                          textStyle: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        ),
                        SizedBox(height: 5.0,),
                        TextFormField(
                          controller: passwordController,
                          keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(
                            fillColor: Color(0xffFEF3F1),
                            filled: true,
                            hintStyle: GoogleFonts.exo2(
                              textStyle: TextStyle(color:Color(0xffFC7D90)),
                            ),
                            prefixIcon: Icon(Icons.lock_rounded,color:Color(0xffFC7D90)),
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            hintText: 'Enter Password Here',
                          ),
                          autofocus: false,
                          obscureText: true,
                        ),
                        SizedBox(height: 20.0,),
                        Text("Phone Number",style: GoogleFonts.exo2(
                          textStyle: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        ),
                        SizedBox(height: 5.0,),
                        TextFormField(
                          controller: phoneController,
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            fillColor: Color(0xffFEF3F1),
                            filled: true,
                            hintStyle: GoogleFonts.exo2(
                              textStyle: TextStyle(color:Color(0xffFC7D90)),
                            ),
                            prefixIcon: Icon(Icons.lock_rounded,color:Color(0xffFC7D90)),
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            hintText: 'Enter Phone Number Here',
                          ),
                          autofocus: false,
                        ),
                        SizedBox(height:50.0,),
                        Container(
                          width: double.infinity,
                          height: 60.0,
                          decoration: BoxDecoration(
                              color: Colors.pinkAccent,
                            borderRadius: BorderRadius.circular(15.0)
                          ),
                          child: MaterialButton(
                            onPressed: (){
                              controller.createUser(emailController.text, passwordController.text);
                              Get.to(SignIn());
                            },
                            child: Text("Next",style:GoogleFonts.aBeeZee(
                             textStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 40.0
                              ),
                            ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20.0,),
                        Row(children: [
                          Text("Already member login here",style:GoogleFonts.aBeeZee(
                            textStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 15.0
                            ),),
                          ),
                          FlatButton(onPressed: ()=>Get.to(SignIn()),
                            child: Text("Log In",style:GoogleFonts.aBeeZee(
                              textStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 19.0,
                                  fontWeight: FontWeight.bold
                              ),),
                            ),
                          ),
                        ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
            ],
          )),

    );
  }
}
