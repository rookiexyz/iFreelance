// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

import '../Components/text_field.dart';

class Login extends StatefulWidget {

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  // text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 50,),

                //  Logo
                const Icon(
                    Icons.lock,
                    size: 100,
                ),

                const SizedBox(height: 50,),

                //  Welcome Text
                Text(
                  'Welcome back, you\'ve been missed!',
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 25,),

                //  Email/username Text Field
                MyTextField(
                  controller: usernameController,
                  hintText: 'Email/Username',
                  obscureText: false,
                ),
                const SizedBox(height: 25,),

                //  Password Text Field
                MyTextField(
                  controller: passwordController,
                  hintText: 'Password',
                  obscureText: true,
                ),
                const SizedBox(height: 25,),

                //  signin text button

                //  or continue with text

                //  google + apple sign in buttons

                //  Not a member, register now
            ],),
          ),
      ),
    );
  }
}

