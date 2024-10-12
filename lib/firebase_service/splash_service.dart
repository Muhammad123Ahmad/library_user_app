import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:library_user_app/ui/auth/login_screen.dart';
import 'dart:async';
import 'package:library_user_app/ui/post/home_screen.dart';

/*

// code for simple splash screen

class  SplashService {
  void isLogin(BuildContext context){

    Timer(const Duration(seconds: 3), ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>const LoginScreen())));

  }
}

*/

// code for splash screen + check if user alredy login then should move to home screen
class  SplashService {

  
  void isLogin(BuildContext context){

    final auth = FirebaseAuth.instance;

  final user =  auth.currentUser;

  if (user != null ){ // means already login

    Timer(const Duration(seconds: 3), ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomeScreen())));

  }
  else{
    Timer(const Duration(seconds: 5), ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>const LoginScreen())));

  }

    

  }
}