// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
//import 'package:flutter/rendering.dart';
import 'package:new_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
    debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: GradientContainer(Color.fromARGB(255, 49, 78, 241),Color.fromARGB(255, 63, 16, 124)),
      ),
     ),
  );
}

