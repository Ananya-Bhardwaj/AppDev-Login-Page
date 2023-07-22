import 'package:flutter/material.dart';

class EmailPage extends StatefulWidget {
  const EmailPage({super.key});

  @override
  State<EmailPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<EmailPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Column(children: [
          Container(), 
          TextField(), 
          TextField(), 
          Row(), 
          TextButton(onPressed: (){}, 
          child: Text('Sign In')),
          Row(
            children: [
              Text(''), 
              Text(''), 
            ],
          ),
          Expanded(child: Container()), 
          Text(''), 
          TextButton(onPressed: (){}, child: Text('Privacy Policy'))
        ],
        ),
      ),
    );
  }
}