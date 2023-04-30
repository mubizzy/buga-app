// import 'package:buga_app/screens/screen_boarding.dart';
import 'package:buga_app/screens/screenboarding.dart';
// import 'package:buga_app/screens/splashcontent.dart';
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
        title: 'Buga App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            // primarySwatch: Colors.blue,
            ),
        home: const ScreenBoarding());
  }
}
