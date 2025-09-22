import 'package:cardinal_quotes/pages/auth/auth_page.dart';
import 'package:cardinal_quotes/pages/home/home_page.dart';
import 'package:cardinal_quotes/pages/journal_page/journal_create_page.dart';
import 'package:cardinal_quotes/pages/journal_page/journal_page.dart';
import 'package:cardinal_quotes/pages/memorial_page.dart/memorial_page.dart';
import 'package:cardinal_quotes/pages/navigator/navigator_bot.dart';
import 'package:cardinal_quotes/pages/todo/todo_page.dart';
import 'package:cardinal_quotes/pages/wallpaper_page/wallpaper_page.dart';
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
      routes: {
        '/home': (context) => HomePage(),
        '/auth': (context) => AuthPage(),
        '/todos': (context) => TodoPage(),
        '/journal': (context) => JournalPage(),
        '/journal-create': (context) => JournalCreatePage(),
        '/memorial-card': (context) => MemorialPage(),
        '/wallpapers': (context) => WallpaperPage(),
      },

      // initialRoute: NavigatorBottom(),
      // home: const TodoPage(),
      // home: AuthPage(),
      home: const NavigatorBottom(),
    );
  }
}
