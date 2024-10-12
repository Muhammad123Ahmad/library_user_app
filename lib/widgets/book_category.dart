import 'package:flutter/material.dart';

class BookCategory extends StatefulWidget {

  final String bookcategory;
  
  const BookCategory({super.key,required this.bookcategory});

  @override
  State<BookCategory> createState() => _BookCategoryState();
}

class _BookCategoryState extends State<BookCategory> {
  String selectedCategory = 'Comic';
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
              onTap: (){
                setState(() {
                  selectedCategory = widget.bookcategory;
                });
              },
              child: Container(
                          height: 130,
                          width: 180,
                          decoration:  BoxDecoration(
                            image:const DecorationImage(image: AssetImage('assets/horror.jpg'),fit: BoxFit.fill),
                            borderRadius: BorderRadius.circular(20)
                          ),
                          child:  Center(child:  Text(widget.bookcategory,style: const TextStyle(color: Colors.white,fontSize: 30, fontWeight: FontWeight.w700),)),
                          
                        
                  
                        ),
            );
  }
}