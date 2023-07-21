import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(80.0),
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
            child: Column(children: [
            TextButton(
              onPressed: () {},
              child: const Text('Continue with Email'),
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.green[600],
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Row(
                children: [
                  Icon(Icons.apple),
                  const Text('Continue with Apple'),
                ],
              ),
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.red,
              ),
            ),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.red,
                ),
              child: Row(
                  children: [
                    Icon(Icons.g_translate_rounded),
                    const Text('Continue with Google'),
                  ],
                ),
            ),
              TextButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Icon(Icons.facebook),
                    const Text('Continue with Facebook'),
                  ],
                ),
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.red,
                ),
              ),
            ],
        )
          ),
          )
      )
    );
}
