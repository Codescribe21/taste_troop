import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:taste_troop/pages/login_page.dart';
import 'package:taste_troop/themes/theme_provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (Context) => themeProvider(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginPage(),
      theme: Provider.of<themeProvider>(context).themeData,
    );
  }
}
