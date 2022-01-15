import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tugasflutter/tugas13/login_screen.dart';
import 'package:tugasflutter/tugas13/home_screen.dart';
import 'package:tugasflutter/tugas14/data_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const DataScreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.green,
          fontFamily: GoogleFonts.raleway().fontFamily,
          inputDecorationTheme:
              const InputDecorationTheme(border: OutlineInputBorder())),
    );
  }
}
