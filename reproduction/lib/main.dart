import 'package:flutter/material.dart';
import 'page_d_accueil.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Profil D'Application ",
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: profil(),
    );
  }
}

