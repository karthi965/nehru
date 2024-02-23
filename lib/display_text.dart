import 'package:flutter/material.dart';
import 'app_data_text.dart';

class DisplayText extends StatelessWidget {
  final AppDataText appDataText;
  const DisplayText({super.key, required this.appDataText});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 400,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: Color(0xff243c63),
        ),
        child: Center(
          child: Text(
            appDataText.text,
            textAlign: TextAlign.center,
            style: TextStyle(color:Colors.white,fontSize: 25,fontFamily: 'robot'),
          ),
        ),
      ),
    );
  }
}
