import 'package:flutter/material.dart';
import 'package:basic/my_container.dart';

void main() {
  runApp(
     const MaterialApp(
      home: Scaffold(
        body: MyContainer(
          Color.fromARGB(255, 12, 48, 168),
          Color.fromARGB(255, 0, 255, 251)),
      ),
    ),
  );
}