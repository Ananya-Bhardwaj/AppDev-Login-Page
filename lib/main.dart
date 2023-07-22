import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(50),
            child: FilledButton(
              onPressed: () {},
              child: const Text('Skip'),
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color?>(Colors.amber[200]),
                alignment: const Alignment(1, 1),
              ),
            ),
          ),
          body: Center(
              child: Column(
              children: [
            Container(
              height: 180,
              width: 180,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(90),
                color: Colors.blue[50], 
              ),
              child: Image.network('https://www.7krave.com/img/7krave-logo.png', fit: BoxFit.fitHeight,),
              ), 
              SizedBox(height: 50,), 
            TextButton(
              onPressed: () {},
              child: Container(
                width: 300,
                child: const Text('Continue with Email'), 
                alignment: Alignment.center,
              ),
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.green[600],
                fixedSize: Size(300, 50)
              ),
            ),
            SizedBox(height: 20,),
            TextButton(
              onPressed: () {},
              child: Container(
                width: 300,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.apple),
                  const Text('Continue with Apple'),
                ],
              ),
              ),
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.black,
                fixedSize: Size(300, 50)
              ),
            ),
            SizedBox(height: 20,),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Color(0xFF4285F4),
                  fixedSize: Size(300, 50)
                ),
              child: Container(
                width: 300,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.g_translate_rounded),
                    const Text('Continue with Google'),
                  ],
                ),
              )
            ),
            SizedBox(height: 20,),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Color(0xFF1877F2),
                  fixedSize: Size(300, 50)
                ),
                child: Container(
                  width: 300,
                  child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.facebook),
                    const Text('Continue with Facebook'),
                  ],
                ),
                )
              ),
              Padding(
                padding: EdgeInsets.only(top: 20), 
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't have an account?", 
                    style: TextStyle(fontWeight: FontWeight.bold),), 
                    const Text(' Sign Up', 
                      style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),),
                  ],
              ),
              ), 
              RichText(
                text: TextSpan(
                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                  children: [
                    TextSpan(text: 'By click "Continue with Email/Apple/Google/Facebook" above, you agree to 7krave'),
                    TextSpan(text: 'Terms and Conditions & Privacy Policy', style: TextStyle(color: Colors.yellow)), 
                    ])
              )
            ],
          ),
        )
          ),
          )
    );
}
