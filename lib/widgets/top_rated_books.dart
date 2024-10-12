import 'package:flutter/material.dart';

class TopRatedBooks extends StatelessWidget {

  final String bookname;
  final String authorname;
  final String imagepath;
  const TopRatedBooks({super.key,required this.authorname,required this.bookname,required this.imagepath});

  @override
  Widget build(BuildContext context) {
    return Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
              
                    Container(
              
                      height: 130,
                      width: 180,
                      decoration:  BoxDecoration(
                        image: DecorationImage(image: AssetImage(imagepath),fit: BoxFit.fill),
              
                        borderRadius: BorderRadius.circular(20)
                      ),
                      
                    
              
                    ),
                     Padding(
              padding: const EdgeInsets.only(left: 10,top: 4,bottom: 2),
              child: Text(bookname, style: const TextStyle(fontSize: 14,color:  Colors.black, fontWeight: FontWeight.bold),),
            ),
             Padding(
              padding: const EdgeInsets.only(left: 10,),
              child: Text(authorname, style: const TextStyle(fontSize: 12,color:  Colors.grey, fontWeight: FontWeight.w500),),
            ),
                    
                  ],
                );
  }
}