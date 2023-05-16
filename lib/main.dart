import 'package:cv_builder/login.dart';
import 'package:flutter/material.dart';
// ignore: duplicate_import
import 'package:cv_builder/login.dart';
import 'package:cv_builder/register.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyLogin(),
    routes: {
      'register': (context) => MyRegister(),
      'login': (context) => MyLogin(),
    },
  ));
}
