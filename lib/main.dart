import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:taste_troop/auth/login_or_register.dart';
import 'package:taste_troop/models/restaurant.dart';
import 'package:taste_troop/themes/theme_provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      //theme provider

      ChangeNotifierProvider(create: (context) => themeProvider()),

      //Restaurant provider

      ChangeNotifierProvider(create: (context) => Restaurant()),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginOrRegister(),
      theme: Provider.of<themeProvider>(context).themeData,
    );
  }
}
