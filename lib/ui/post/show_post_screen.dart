import 'package:cloud_firestore/cloud_firestore.dart';
//import 'package:firestore_todo_app/utils/utils.dart';
import 'package:firebase_auth/firebase_auth.dart';
//import 'package:firebase_database/firebase_database.dart';
//import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
//import 'package:library_user_app/utils/utils.dart';
//import 'package:library_user_app/widgets/book_category.dart';
//import 'package:library_user_app/widgets/round_button.dart';

class ShowPostScreen extends StatefulWidget {
  const ShowPostScreen({super.key});

  @override
  State<ShowPostScreen> createState() => _ShowPostScreenState();
}

class _ShowPostScreenState extends State<ShowPostScreen> {

  //final ref = FirebaseDatabase.instance.ref('Post');
  final searchText = TextEditingController();
  final editnameController = TextEditingController();
  final editcatController = TextEditingController();
  final editdescController = TextEditingController();

  String  bookname = "";
  String  bookdesc = "";
  String  bookcategory = "";
   String  docid = "";
   String selectedCategory = 'Comic';

  FirebaseAuth auth = FirebaseAuth.instance;

  //final fireStore = FirebaseFirestore.instance.collection('bookdetails').where('BookCategory', isEqualTo: selectedCategory.toLowerCase());

  final ref1 = FirebaseFirestore.instance.collection('bookdetails');

  //late Query  query;

  @override
  // void initState() {
  //   // TODO: implement initState

  //   query = ref.orderByChild('uid').equalTo(auth.currentUser!.uid); // setting condition that  uid is eqaul to user id so that he should only see his task only
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text('Show Data',style: TextStyle(color: Colors.white),),
        centerTitle: true,
        automaticallyImplyLeading: false ,
        

        backgroundColor: const Color(0xff8207ed),
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          const SizedBox( height: 10,),

          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: TextFormField(
          //     controller: searchText,
          //     decoration:const InputDecoration(
          //       hintText: 'Search',
          //       border: OutlineInputBorder(),
          //     ),
          //   onChanged: (String value){
          //     setState(() {
                
          //     });
          //   },
          //   ),
            
          // ),

          

        const Padding(
           padding:  EdgeInsets.only(left:15, bottom: 10,top: 10),
           child:  Text('Book Categories',style: TextStyle(color: Colors.black,fontSize: 20, fontWeight: FontWeight.w700)),
         ),

         SingleChildScrollView(
          scrollDirection: Axis.horizontal,
           child: Row(
            children: [
              GestureDetector(
                onTap: (){
                  setState(() {
                    selectedCategory = "Fiction";
                  });
                },
                child: Container(
                            height: 130,
                            width: 180,
                            decoration:  BoxDecoration(
                              image:const DecorationImage(image: AssetImage('assets/horror.jpg'),fit: BoxFit.fill),
                              borderRadius: BorderRadius.circular(20)
                            ),
                            child: const Center(child:  Text('Fiction',style: TextStyle(color: Colors.white,fontSize: 30, fontWeight: FontWeight.w700),)),
                          ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:8.0),
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      selectedCategory = "Comic";
                    });
                  },
                  child: Container(
                              height: 130,
                              width: 180,
                              decoration:  BoxDecoration(
                                image:const DecorationImage(image: AssetImage('assets/horror.jpg'),fit: BoxFit.fill),
                                borderRadius: BorderRadius.circular(20)
                              ),
                              child: const Center(child:  Text('Comic',style: TextStyle(color: Colors.white,fontSize: 30, fontWeight: FontWeight.w700),)),
                            ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:8.0),
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      selectedCategory = "Horror";
                    });
                  },
                  child: Container(
                              height: 130,
                              width: 180,
                              decoration:  BoxDecoration(
                                image:const DecorationImage(image: AssetImage('assets/horror.jpg'),fit: BoxFit.fill),
                                borderRadius: BorderRadius.circular(20)
                              ),
                              child: const Center(child:  Text('Horror',style: TextStyle(color: Colors.white,fontSize: 30, fontWeight: FontWeight.w700),)),
                            ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:8.0),
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      selectedCategory = "Fantasy";
                    });
                  },
                  child: Container(
                              height: 130,
                              width: 180,
                              decoration:  BoxDecoration(
                                image:const DecorationImage(image: AssetImage('assets/horror.jpg'),fit: BoxFit.fill),
                                borderRadius: BorderRadius.circular(20)
                              ),
                              child: const Center(child:  Text('Fantasy',style: TextStyle(color: Colors.white,fontSize: 30, fontWeight: FontWeight.w700),)),
                            ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:8.0),
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      selectedCategory = "Thriller";
                    });
                  },
                  child: Container(
                              height: 130,
                              width: 180,
                              decoration:  BoxDecoration(
                                image:const DecorationImage(image: AssetImage('assets/horror.jpg'),fit: BoxFit.fill),
                                borderRadius: BorderRadius.circular(20)
                              ),
                              child: const Center(child:  Text('Thriller',style: TextStyle(color: Colors.white,fontSize: 30, fontWeight: FontWeight.w700),)),
                            ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:8.0),
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      selectedCategory = "Crime";
                    });
                  },
                  child: Container(
                              height: 130,
                              width: 180,
                              decoration:  BoxDecoration(
                                image:const DecorationImage(image: AssetImage('assets/horror.jpg'),fit: BoxFit.fill),
                                borderRadius: BorderRadius.circular(20)
                              ),
                              child: const Center(child:  Text('Crime',style: TextStyle(color: Colors.white,fontSize: 30, fontWeight: FontWeight.w700),)),
                            ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:8.0),
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      selectedCategory = "Mystery";
                    });
                  },
                  child: Container(
                              height: 130,
                              width: 180,
                              decoration:  BoxDecoration(
                                image:const DecorationImage(image: AssetImage('assets/horror.jpg'),fit: BoxFit.fill),
                                borderRadius: BorderRadius.circular(20)
                              ),
                              child: const Center(child:  Text('Mystery',style: TextStyle(color: Colors.white,fontSize: 30, fontWeight: FontWeight.w700),)),
                            ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:8.0),
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      selectedCategory = "Romance";
                    });
                  },
                  child: Container(
                              height: 130,
                              width: 180,
                              decoration:  BoxDecoration(
                                image:const DecorationImage(image: AssetImage('assets/horror.jpg'),fit: BoxFit.fill),
                                borderRadius: BorderRadius.circular(20)
                              ),
                              child: const Center(child:  Text('Romance',style: TextStyle(color: Colors.white,fontSize: 30, fontWeight: FontWeight.w700),)),
                            ),
                ),
              ),
             
           
              
              
            ],
           ),
         ),
         

         StreamBuilder<QuerySnapshot>(stream: FirebaseFirestore.instance.collection('bookdetails').where('BookCategory', isEqualTo: selectedCategory).snapshots(), builder: (BuildContext context , AsyncSnapshot<QuerySnapshot> snapshot){
         
            if (snapshot.connectionState == ConnectionState.waiting)
            {
              return const CircularProgressIndicator();
            }
         
            if (snapshot.hasError){
              return const  Text('Some Error');
            }
         
             if (snapshot.hasData)
            {
              return Expanded(child: ListView.builder(
            
            itemCount: snapshot.data!.docs.length,
            itemBuilder: (context,index){
              bookname  = snapshot.data!.docs[index]['BookName'];
              bookcategory  = snapshot.data!.docs[index]['BookCategory'];
              bookdesc  = snapshot.data!.docs[index]['BookDescription'];
              docid = snapshot.data!.docs[index].id;
              
         
              return 
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 150,
                  decoration:  BoxDecoration(
                    color:  const Color.fromARGB(104, 190, 87, 216),
                    borderRadius: BorderRadius.circular(12)
                    
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: 
                  
                  [
                    
                  
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: 
                      [
                        Padding(
                    padding: const EdgeInsets.only(top: 8.0,left:8,bottom: 8),
                    child: Text('Book Name: $bookname ',style:const TextStyle(fontSize: 16),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0,bottom: 8),
                    child: Text('Book Category: $bookcategory',style:const TextStyle(fontSize: 16),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text('Book Description: $bookdesc',style:const TextStyle(fontSize: 16),),
                  ),
                  
                      ],
                    ),
                    // PopupMenuButton(
                    // icon: const Icon(Icons.more_vert),
                    // itemBuilder: (context)=>[
                  
                    //    PopupMenuItem(
                    //     value: 1,
                        
                    //     child:const ListTile(
                    //       leading:  Icon(Icons.edit),  
                    //       title:  Text('Edit'),
                        
                    //     ),
                        
                    //     onTap: () {
                    //      showMyDialog(bookname,bookcategory,bookdesc, docid);
                          
                    //     }, 
                        
                    //     ),
         
                    //      PopupMenuItem(
                    //     value: 2,
                        
                    //     child: const ListTile(
                    //       leading:  Icon(Icons.delete),  
                    //       title:  Text('Delete'),
                        
                    //     ),
                    //     onTap: () {
         
                    //       snapshot.data!.docs[index].reference.delete();
                          
                    //     },
                    //      ),
                    // ]),
                  
                  ],
                  
                  
                  ),
                  
                ),
              );
                 
            },
            
            ));
            }
         
            return  const SizedBox();
 
         
          }),

/*

// Code to get simple data without search bar
          Expanded(
            child: FirebaseAnimatedList(
              query: ref,
              itemBuilder: (context,snapshot,animation,index){

                return ListTile(

                  title: Text(snapshot.child('title').value.toString()),
                  subtitle:  Text(snapshot.child('id').value.toString()),

                );
              }),
          ),

*/
          // Padding(
          //   padding: const EdgeInsets.all(20.0),
          //   child: RoundButton(onTap: (){
            
          //     Navigator.push(context, MaterialPageRoute(builder: (context)=>const AddPostScreen()));
            
          //   }, title: 'Add new data'),
          // )

          

        ],
      ),


    );
    
  }

  // function contains code for edit text
  // Future<void> showMyDialog( String bname,String bcat,String bdesc, String id)async{
  //   editnameController.text = bname;
  //   editcatController.text = bcat;
  //   editdescController.text = bdesc;
  //   return showDialog(
  //     context: context,
  //     builder: (BuildContext context){

  //       return  AlertDialog(

  //         title:  const Text('Update'),
  //         content: 
  //         Column(
  //           children: [
  //             TextField(
  //           controller: editnameController,
  //           decoration: const InputDecoration(hintText: "Enter new book name"),

  //         ),
  //         const SizedBox(height: 6,),
  //         TextField(
  //           controller: editcatController,
  //           decoration: const InputDecoration(hintText: "Enter new category"),

  //         ),
  //          const SizedBox(height: 6,),
  //         TextField(
  //           controller: editdescController,
  //           decoration: const InputDecoration(hintText: "Enter new description"),

  //         ),
  //           ],
  //         ),
  //         actions: [
  //            TextButton(onPressed: (){ Navigator.pop(context);}, child: const Text('Cancel')),
  //            TextButton(onPressed: (){ 
  //             Navigator.pop(context);
  //             ref1.doc(id).update({
  //               'BookName' : editnameController.text.toLowerCase(), // prefilling the dialouge with current bookname
  //               'BookCategory' : editcatController.text.toLowerCase(),
  //               'BookDescription' : editdescController.text.toLowerCase(),

  //             }).then((value){

  //               Utils().toastMessage('Post Added Successfully');

  //             }).onError((error,stackTrace){
  //               Utils().toastMessage(error.toString());

  //             });
             
  //            }, child: const Text('Update')), 
  //         ],

  //       );



  //     }

  //   );

  // }
// function for edit text ends here 
  
}