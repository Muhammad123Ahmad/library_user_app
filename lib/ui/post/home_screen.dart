//import 'package:check1/ui/auth/login_screen.dart';
//import 'package:check1/utils/utils.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:library_user_app/ui/post/show_post_screen.dart';
import 'package:library_user_app/ui/user_profile.dart';
import 'package:library_user_app/widgets/author.dart';
import 'package:library_user_app/widgets/top_rated_books.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:  (const Text('Home',style: TextStyle(color: Colors.white),)),
        backgroundColor: const Color(0xff8207ed),

        actions:
        
         [
          
        /*  
          IconButton(
          onPressed: (){
          auth.signOut().then((value) {
            Navigator.push(context,MaterialPageRoute(builder: (context)=>const LoginScreen()));
          }).onError((error,stackTrace){
            Utils().toastMessage(error.toString());

          });
        }, icon: const Icon(Icons.logout)),
        */
        
        
        Padding(
         padding: const EdgeInsets.only(right:8.0),
         child:   InkWell(

          onTap: () {
            Navigator.push(context,MaterialPageRoute(builder: (context)=>const UserProfileScreen()));
          },
           child: const CircleAvatar(
            radius: 20,
              backgroundImage:AssetImage('assets/user.png'),
            ),
         ),
       ),
       

        ],

        ),

        floatingActionButton: FloatingActionButton(onPressed: (){

          Navigator.push(context, MaterialPageRoute(builder: (context)=> const ShowPostScreen()));
        },

        child: const Icon(Icons.add),
        backgroundColor: const Color(0xff8207ed),
        
        ),

        body: const Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Padding(
              padding: EdgeInsets.all(15),
              child: Text('Books are the mirrors of the soul.', style: TextStyle(fontSize: 25,color:  Colors.black, fontWeight: FontWeight.w500),),
            ),

            //Image(image: AssetImage('assets/book1.png'))
            Padding(
              padding: EdgeInsets.only(left: 15,top: 6,bottom: 10),
              child: Text('Top authors', style: TextStyle(fontSize: 16,color:  Colors.black, fontWeight: FontWeight.bold),),
            ),

             Row(
              
              children: [
              Author(name: 'King', imagepath:'assets/user.png' ),
              SizedBox(width: 10,),
              Author(name: 'King2', imagepath:'assets/user.png' ),
              SizedBox(width: 10,),
              Author(name: 'King3', imagepath:'assets/user.png' ),
              SizedBox(width: 10,),
              Author(name: 'King4', imagepath:'assets/user.png' ),
              SizedBox(width: 10,),
              Author(name: 'King5', imagepath:'assets/user.png' ),
                
            ],),

             Padding(
              padding: EdgeInsets.only(left: 15,top: 30,bottom: 6),
              child: Text('Top rated books', style: TextStyle(fontSize: 16,color:  Colors.black, fontWeight: FontWeight.bold),),
            ),

            Padding(
              padding:  EdgeInsets.only(left:10),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(children: [
                            //     Column(
                            //       mainAxisAlignment: MainAxisAlignment.start,
                            //       crossAxisAlignment: CrossAxisAlignment.start,
                            //       children: [
                
                            //         Container(
                
                            //           height: 130,
                            //           width: 180,
                            //           decoration:  BoxDecoration(
                            //             image: DecorationImage(image: AssetImage('assets/book1.png'),fit: BoxFit.fill),
                            //             borderRadius: BorderRadius.circular(20)
                            //           ),
                            //         ),
                            //         const Padding(
                            //   padding: EdgeInsets.only(left: 10,top: 4,bottom: 2),
                            //   child: Text('The Return', style: TextStyle(fontSize: 14,color:  Colors.black, fontWeight: FontWeight.bold),),
                            // ),
                            // const Padding(
                            //   padding: EdgeInsets.only(left: 10,),
                            //   child: Text('Julia Spark', style: TextStyle(fontSize: 12,color:  Colors.grey, fontWeight: FontWeight.w500),),
                            // ),
                      
                            //       ],
                            //     ),
                
                            TopRatedBooks(authorname: 'Jullia Spark', bookname: 'The Return', imagepath: 'assets/book1.png'),
                            SizedBox(width: 10,),
                            TopRatedBooks(authorname: 'Jullia Spark', bookname: 'The Return', imagepath: 'assets/book1.png'),
                            SizedBox(width: 10,),
                            TopRatedBooks(authorname: 'Jullia Spark', bookname: 'The Return', imagepath: 'assets/book1.png')
                ],),
              ),
            )


          ],
        ),
        
    );
  }
}