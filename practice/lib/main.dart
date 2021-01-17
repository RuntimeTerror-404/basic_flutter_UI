// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:practice/pages/HomePage.dart';
// import 'package:practice/pages/HomePage.dart';
import 'package:practice/pages/LoginPage.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Awesome App",
      home: LoginPage(),
      theme: ThemeData(primarySwatch: Colors.purple),
      routes: {
        "/login": (context) => LoginPage(),
        "/home": (context) => HomePage()
      },
    ),
  );
}
