import 'package:flutter/material.dart';
import 'package:gdsc_solution_challenge_2024/screens/screen_wrapper.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          textTheme: GoogleFonts.interTextTheme(
        Theme.of(context).textTheme,
      )),
      home: const ScreenWrapper(),
    );
  }
}
