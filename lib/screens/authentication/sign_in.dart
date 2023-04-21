import 'package:brew_crew/services/auth.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  String email = '';
  String password = '';

  final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
        backgroundColor: Colors.brown[400],
        elevation: 0.0,
        title: Text('Sign in to Brew Crew'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20,horizontal: 50),
        child: Form(
          child: Column(
            children: [
              TextFormField(
                onChanged: (val) {
                  email = val;
                },
                decoration: InputDecoration(
                  label: Text('Email'),
                  errorText: 'Invalid Text',
                ),

              ),
              TextFormField(
                onChanged: (val) {
                  password = val;

                },
                obscureText: true,
                decoration: InputDecoration(
                  label: Text('Password'),
                  errorText: 'Invalid Password'
                ),


              ),
              SizedBox(height: 30.0,),

              TextButton(
                onPressed: () {
                  print(email);
                  print(password);
                },
                child: Text('Sign in'),
              )
            ],
          ),
        )
      ),
    );
  }
}
