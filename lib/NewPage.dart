import 'package:flutter/material.dart';
import 'package:flutter_application_1/Email.dart';

class NewPage extends StatefulWidget {
  const NewPage({super.key});

  @override
  State<NewPage> createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Your Email entered is ${EmailPage.email}',
                style: TextStyle(fontSize: 20, ),
              ),
              Text(
                'Your Password entered is ${EmailPage.password}',
                style: TextStyle(fontSize: 20,),
              ),
            ],
          ),
        )
        ,)
        
        
        );
  }
}
