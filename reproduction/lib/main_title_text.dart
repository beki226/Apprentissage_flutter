import 'dart:html';
import 'package:flutter/material.dart';

class MainTitleText extends Text{
   final String donne;
   MainTitleText({required this.donne}): super(donne,
   style: TextStyle(
     fontSize: 25,
     fontWeight: FontWeight.bold,
     fontStyle: FontStyle.italic,
    ),
   );
}