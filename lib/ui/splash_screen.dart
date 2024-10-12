
import 'package:flutter/material.dart';
import 'package:library_user_app/firebase_service/splash_service.dart';



class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  
  SplashService splashScreen = SplashService();
  @override
  void initState(){
    super.initState();
    splashScreen.isLogin(context);
    
  }
    @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xff8207ed),
       
       body: Center(child : Text('Book Heaven',style: TextStyle(fontSize: 40,fontWeight: FontWeight.w800,color: Colors.white),),),
      )
      

    );
}}