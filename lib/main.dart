import 'package:flutter/material.dart';
import 'package:flutter_application_2/abi_1.dart';
import 'package:flutter_application_2/dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Dashboard(currentindex: 0),
    );
  }
}

