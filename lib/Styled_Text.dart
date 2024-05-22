// ignore: file_names
import 'package:flutter/material.dart';

class StyledText extends StatelessWidget{
   const StyledText(this.text, {super.key});

final String text;

  @override
  Widget build(context){
    return Text(
      text,
              style: const TextStyle(
                fontSize: 28,
                color: Color.fromARGB(255, 255, 255, 255),
                fontStyle: FontStyle.italic
              ),
            );
  }
}