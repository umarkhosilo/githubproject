
import 'package:eppa/API/Post/Post.dart';
import 'package:eppa/API/Room.dart';
import 'package:eppa/StartPage.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StartPage()
    );
  }
}
