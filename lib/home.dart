import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child:Tab(
          child:Text("Welcome to Resume/CV Builder Application"),
        ),
      ),
    );
  }
}