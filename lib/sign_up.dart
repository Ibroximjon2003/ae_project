import 'package:ae_project/project.dart';
import 'package:ae_project/sign_in.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
                  color: Color.fromARGB(255, 50, 160, 54),
                ),
              ),
              SizedBox(height: 20),
              wTextfield(title: 'firstname'),
              wTextfield(title: 'lastname'),
              wTextfield(title: 'email'),
              wTextfield(title: 'pasword'),
              Text(
                'Already have accont?',
                style: TextStyle(fontSize: 15),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => ProjectScreen())));
                },
                child: Text('OK'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => SignInScreen())));
                },
                child: Text('Sign in'),
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
