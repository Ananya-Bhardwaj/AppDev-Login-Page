import 'package:flutter/material.dart';
import 'package:flutter_application_1/Email.dart';
import 'package:flutter_application_1/Home.dart';
import 'package:flutter_application_1/NewPage.dart';

void main() {
  runApp(
    MaterialApp(
      home: const HomePage(),
      initialRoute: 'Homepage',
      routes: {
        'Homepage': (context) => HomePage(), 
        'Email': (context) => EmailPage(),
        'New': (context) => NewPage(),
      }
    )
  );
}
