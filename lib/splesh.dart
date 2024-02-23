import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_projet/page_view_image.dart';
import 'package:flutter_projet/page_view_text.dart';
import 'package:lottie/lottie.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _State();
}

class _State extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 6),
            () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext) => PageviewText())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset('image/Animation.json',alignment: Alignment.center),
            Text('loading...', style: TextStyle(color: Colors.red,fontSize: 25,fontFamily: 'robot')),
          ],
        ),
      ),
    );
  }
}
