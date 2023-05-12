import 'package:buga_app/screens/screenboarding.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Buga App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            // primarySwatch: Colors.blue,
            textTheme: GoogleFonts.workSansTextTheme()),
        home: const ScreenBoarding());
  }
}
