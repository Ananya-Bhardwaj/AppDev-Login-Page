import 'package:flutter/material.dart';

class EmailPage extends StatefulWidget {
  const EmailPage({super.key});

  @override
  State<EmailPage> createState() => _MyWidgetState();
}

Icon eye = Icon(Icons.visibility_off_outlined); 
bool isChecked = false; 

class _MyWidgetState extends State<EmailPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.grey[50],
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back_sharp,
              size: 20,
              color: Colors.black,
            ),
            highlightColor: Color.fromARGB(255, 217, 230, 239),
          ),
          //colors are not working how to add blue
          title: Text(
            'Sign in',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        body: Center(
          child: Column(
          children: [
            Container(
              height: 100,
              width: 100,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.orange[50],
                borderRadius: BorderRadius.circular(50),
              ),
              child:
                  Image.network('https://www.7krave.com/img/7krave-logo.png'),
            ),
            SizedBox(height: 30,), 
            SizedBox(
              width: 300,
              child: const TextField(
              decoration: InputDecoration(
                labelText: 'Enter your email',
                filled: true, 
                fillColor: Color.fromARGB(24, 166, 198, 252),
                border: InputBorder.none,
              ),
            ),
            ), 
            SizedBox(height: 20,), 
            SizedBox(
              width: 300,
              child: const TextField(
              obscureText: true,
              decoration: InputDecoration(
                  labelText: 'Password',
                  border: InputBorder.none, 
                  filled: true, 
                  fillColor: Color.fromARGB(24, 166, 198, 252),
                  suffixIcon: Icon(Icons.visibility_off),
            ),
            ),
            ),
            Row(
              children: [
                Checkbox(
                  value: isChecked, 
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked = value!;
                    });
                  },), 
                Text('Remember Me'), 
                Expanded(child: Container()), 
                TextButton(onPressed: (){}, 
                child: Text('Forgot Password?'), 
                style: TextButton.styleFrom(
                  foregroundColor: Colors.red[800], 
                ),)
              ],
            ),
            TextButton(
              onPressed: () {}, 
              child: Text('Sign In',
              style: TextStyle(color: Colors.white),),
              style: TextButton.styleFrom(
                backgroundColor: Colors.green[600], 
                fixedSize: Size(300, 60), 
              ),
              ),
              SizedBox(height: 20,), 
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account? "),
                Text('Sign Up', 
                style: TextStyle(
                  color: Colors.green[600], 
                ),
                ),
              ],
            ),
            Expanded(child: Container()),
            RichText(
                text: TextSpan(
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                    children: [
                  TextSpan(
                      text:
                          'By clickint "Sign In" above, you agree to 7krave '),
                  TextSpan(
                      text: 'Terms & Conditions and Privacy Policy',
                      style: TextStyle(color: Colors.amber[100])),
                ])),
        ],
        ),
        )
        
      ),
    );
  }
}
