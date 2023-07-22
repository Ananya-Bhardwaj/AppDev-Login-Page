import 'package:flutter/material.dart';
import 'package:flutter_application_1/Email.dart';
import 'package:flutter_application_1/Home.dart';

void main() {
  runApp(
    MaterialApp(
      home: const HomePage(),
      initialRoute: 'Homepage',
      routes: {
        'Homepage': (context) => HomePage(), 
        'Email': (context) => EmailPage(),
      }
    )
  );
}
