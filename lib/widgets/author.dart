import 'package:flutter/material.dart';

class Author extends StatefulWidget {


  final String name ;
  final String imagepath ;
  const Author({super.key, required this.name,required this.imagepath});

  @override
  State<Author> createState() => _AuthorState();
}


class _AuthorState extends State<Author> {
  @override
  Widget build(BuildContext context) {
    return  Column(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(widget.imagepath),),
                    Text(widget.name,style:const TextStyle(fontWeight: FontWeight.w500),),
                ],
              );
  }
}