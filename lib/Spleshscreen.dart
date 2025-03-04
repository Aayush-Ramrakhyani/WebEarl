import 'dart:async';

import 'package:flutter/material.dart';
import 'package:nike_sneaker_store/firstscreen.dart';

class NikeScreen extends StatefulWidget {
  const NikeScreen({super.key});

  @override
  State<NikeScreen> createState() => _NikeScreenState();
}

class _NikeScreenState extends State<NikeScreen> {
  @override
  void initState() {
    super.initState();
    // Navigate to HomeScreen after 3 seconds
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MyFirstScreen(),));
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[700],
      body: Center(
        child: Container(
          
          height: 130,
          width: 157,
          child: Image.asset('assets/images/Group.png')
        ),
      ),
    );
  }
}