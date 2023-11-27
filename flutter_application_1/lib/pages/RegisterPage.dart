import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/SquareTitle.dart';
import 'package:flutter_application_1/components/myButton.dart';
import 'package:flutter_application_1/components/myTextFiled.dart';

class RegisterPage extends StatefulWidget {
  final Function()? onTap;
  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
//text editing controllers
  final emailController = TextEditingController();

  final passwordController = TextEditingController();

//sign user in method
  void signUserUp() async {
//show loading circle
    showDialog(
        context: context,
        builder: (context) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        });

    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );

      Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      Navigator.pop(context);
      // showDialog(
      //   context: context,
      //   builder: (context) {
      //     return const AlertDialog(
      //       title: Text('Register faild'),
      //     );
      //   },
      // );
      if (e.code == 'weak-password') {
        weakPassword();
      } else if (e.code == 'email-already-in-use') {
        emailUsed();
      }
    }
  }

  void weakPassword() {
    showDialog(
      context: context,
      builder: (context) {
        return const AlertDialog(
          title: Text('The password provided is too weak'),
        );
      },
    );
  }

  void emailUsed() {
    showDialog(
      context: context,
      builder: (context) {
        return const AlertDialog(
          title: Text('The account already exists for that email.'),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Image.asset(
                  "images/login.png",
                  height: 250,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              myTextFiled(
                controller: emailController,
                hintText: "Email",
                obscureText: false,
                icon: 'user',
              ),
              SizedBox(
                height: 20,
              ),
              myTextFiled(
                controller: passwordController,
                hintText: "Password",
                obscureText: true,
                icon: 'lock',
              ),
              SizedBox(
                height: 10,
              ),

              MyButton(
                onTap: signUserUp,
                text: 'Sign up',
              ),
              SizedBox(
                height: 50,
              ),

              //OR CONTINUE WITH
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.blueGrey,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        'Or continue with',
                        style: TextStyle(color: Color(0xFF475269)),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //google button
                  SquareTitle(imagePath: "images/google.png"),

                  //apple button
                  SquareTitle(imagePath: "images/apple.png"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account",
                    style: TextStyle(
                      color: Color(0xFF475269).withOpacity(0.8),
                      fontSize: 14,
                    ),
                  ),
                  GestureDetector(
                    onTap: widget.onTap,
                    child: Text(
                      "Login Now",
                      style: TextStyle(
                        color: Color(0xFF475269),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
