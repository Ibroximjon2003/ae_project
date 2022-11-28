import 'package:ae_project/project.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 40),
              Text(
                'Sign up',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.orange,
                ),
              ),
              SizedBox(height: 20),
              wTextfield(title: 'email'),
              wTextfield(title: 'pasword'),
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => ProjectScreen())));
                },
                child: Text('OK'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class wTextfield extends StatelessWidget {
  wTextfield({required this.title});
  String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Input your $title',
          ),
        ),
        SizedBox(height: 10),
      ],
    );
  }
}
