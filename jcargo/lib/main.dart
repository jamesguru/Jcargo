import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:jcargo/Pages/GetStarted.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jcargo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: GetStarted(),
      debugShowCheckedModeBanner: false,
    );
  }
}
