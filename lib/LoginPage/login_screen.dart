// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:freelance_marketplace/Components/my_button.dart';
import 'package:freelance_marketplace/Components/square_tile.dart';

import '../Components/text_field.dart';

class Login extends StatefulWidget {

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  // text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  //  Sign In button function
  void signUserIn() {
  }

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
                const SizedBox(height: 10,),

                //  Password Text Field
                MyTextField(
                  controller: passwordController,
                  hintText: 'Password',
                  obscureText: true,
                ),
                const SizedBox(height: 15,),

                // Forgot password text button
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text('Forgot Password?',
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 25,),

                //  signin text button
                MyButton(
                  onTap: signUserIn,
                ),
                const SizedBox(height: 50,),

                //  or continue with text
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[500],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text('Or Continue With',),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[500],
                        ),
                      )
                      ],
                  ),
                ),
                const SizedBox(height: 25,),

                //  google + apple sign in buttons
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  //  google sign in button
                  SquareTile(imagePath: 'assets/images/google.png'),
                  SizedBox(width: 25,),
                  //  apple sign in button
                  SquareTile(imagePath: 'assets/images/apple.png'),

                  ],
                ),

                //  Not a member, register now
            ],),
          ),
      ),
    );
  }
}

