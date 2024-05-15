import 'package:flutter/material.dart';
import 'package:taste_troop/components/my_button.dart';
import 'package:taste_troop/components/my_textfield.dart';
import 'package:taste_troop/pages/home_page.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;

  const LoginPage({
    Key? key,
    this.onTap,
  }) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  //login method

  void login() {
    //Fill out authentication here.....

    // After authentication navigate to home page..

    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const HomePage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo
              Icon(
                Icons.lock_open_rounded,
                size: 100,
                color: Theme.of(context).colorScheme.onBackground,
              ),
              SizedBox(height: 25),
              // Message, app slogan
              Text(
                "You Eat We Deliver",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Theme.of(context).colorScheme.onBackground,
                ),
              ),
              SizedBox(height: 25),
              // Email TextField
              MyTextField(
                controller: emailController,
                hintText: "Email",
                obscureText: false,
              ),
              SizedBox(height: 10),
              // Password TextField
              MyTextField(
                controller: passwordController,
                hintText: "Password",
                obscureText: true,
              ),
              SizedBox(height: 25),
              // Sign In button
              MyButton(
                onTap: login,
                text: 'Sign In',
              ),
              SizedBox(height: 25),
              // Not a member? Register now
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Not a member?",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
                  ),
                  SizedBox(width: 4.0),
                  GestureDetector(
                    onTap: widget.onTap,
                    child: Text(
                      "Register now",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.onBackground,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
