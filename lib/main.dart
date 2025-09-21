import 'package:cardinal_quotes/pages/auth/auth_page.dart';
import 'package:cardinal_quotes/pages/home/home_page.dart';
import 'package:cardinal_quotes/pages/navigator/navigator_bot.dart';
import 'package:cardinal_quotes/pages/todo/todo_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cardinal Quotes',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: const TodoPage(),
      home: AuthPage(),
      // home: const NavigatorBottom(),
    );
  }
}
