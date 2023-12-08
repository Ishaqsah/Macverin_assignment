import 'package:flutter/material.dart';
import 'package:macverin_assignment/presentations/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
         scaffoldBackgroundColor: const Color(0xff141414),
         textTheme: const TextTheme(
          bodyMedium: TextStyle(color:Colors.white ),
          bodyLarge:  TextStyle(color:Colors.white ),
          bodySmall:  TextStyle(color:Colors.white ),
         ),
         iconTheme: const IconThemeData(color: Colors.white),
      ),
      home:const HomeScreen(),
    );
  }
}

