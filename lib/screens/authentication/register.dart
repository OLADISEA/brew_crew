import 'package:flutter/material.dart';
import 'package:brew_crew/services/auth.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
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
        title: Text('Sign up to Brew Crew'),
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
                  ),

                ),
                TextFormField(
                  onChanged: (val) {
                    password = val;

                  },
                  obscureText: true,
                  decoration: InputDecoration(
                      label: Text('Password'),
                  ),


                ),
                SizedBox(height: 30.0,),

                TextButton(
                  onPressed: () {
                    print(email);
                    print(password);
                  },
                  child: Text('Sign up'),
                )
              ],
            ),
          )
      ),
    );
  }
}
