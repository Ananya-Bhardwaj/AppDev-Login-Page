import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomeState();
}

class _HomeState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[50],
          elevation: 0,
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: FilledButton(
                onPressed: () {},
                child: const Text(
                  'Skip',
                  style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 1),
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color?>(Colors.orange[50]),
                ),
              ),
            )
          ],
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
                  color: Color.fromARGB(255, 217, 230, 239),
                ),
                child: Image.network(
                  'https://www.7krave.com/img/7krave-logo.png',
                  fit: BoxFit.fitHeight,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'Email'); 
                },
                child: Container(
                  width: 300,
                  child: const Text('Continue with Email'),
                  alignment: Alignment.center,
                ),
                style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.green[600],
                    fixedSize: Size(300, 50)),
              ),
              SizedBox(
                height: 20,
              ),
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
                    fixedSize: Size(300, 50)),
              ),
              SizedBox(
                height: 20,
              ),
              TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Color(0xFF4285F4),
                      fixedSize: Size(300, 50)),
                  child: Container(
                    width: 300,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.g_translate_rounded),
                        const Text('Continue with Google'),
                      ],
                    ),
                  )),
              SizedBox(
                height: 20,
              ),
              TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Color(0xFF1877F2),
                      fixedSize: Size(300, 50)),
                  child: Container(
                    width: 300,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.facebook),
                        const Text('Continue with Facebook'),
                      ],
                    ),
                  )),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don't have an account?",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      ' Sign Up',
                      style: TextStyle(
                          color: Colors.green, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
            padding: EdgeInsets.all(20),
            child: RichText(
                text: TextSpan(
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                    children: [
                  TextSpan(
                      text:
                          'By click "Continue with Email/Apple/Google/Facebook" above, you agree to 7krave '),
                  TextSpan(
                      text: 'Terms and Conditions & Privacy Policy',
                      style: TextStyle(color: Colors.yellow[400])),
                ]))),
      ),
    );
  }
}
