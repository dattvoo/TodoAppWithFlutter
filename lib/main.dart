import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:super_todo_app/ui/login_screen/login_screen_view.dart';
import 'package:super_todo_app/ui/main/main_page.dart';
import 'package:super_todo_app/ui/on_boarding/onboarding_view.dart';
import 'package:super_todo_app/ui/splash/splash.dart';
import 'package:super_todo_app/ui/start_screen/start_screen_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: GoogleFonts.lato().fontFamily,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: LoginScreen(),
    );
  }
}
