import 'package:flutter/material.dart';
import 'package:taste_troop/components/my_button.dart';
import 'package:taste_troop/components/my_textfield.dart';

class RegisterPage extends StatelessWidget {
  final void Function()? onTap;

  RegisterPage({Key? key, required this.onTap}) : super(key: key);

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmpasswordController =
      TextEditingController();

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
                "Let's create account for you",
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
              SizedBox(height: 10),
              // Password TextField
              MyTextField(
                controller: confirmpasswordController,
                hintText: "Confirm Password",
                obscureText: true,
              ),

              SizedBox(height: 25),
              // Sign up button
              MyButton(
                onTap: onTap,
                text: 'Sign Up',
              ),
              SizedBox(height: 25),
              // Already have an account ? Login here
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account ?",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
                  ),
                  SizedBox(width: 4.0),
                  GestureDetector(
                    onTap: onTap,
                    child: Text(
                      "Login now",
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
