import 'package:flutter/material.dart';
import 'package:sampleflutter/login.dart';

Color myColor = const Color(0xFF123456);
void main(){
  return runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Loding...',
       theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      
      home: const LoginPage()
    );
  }
}

