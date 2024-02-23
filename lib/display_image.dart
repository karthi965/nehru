import 'package:flutter/material.dart';
import 'app_data_image.dart';

class Displayimage extends StatelessWidget {
  final AppDataImage appDataImage;
  const Displayimage({super.key, required this.appDataImage});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 500,
        height: 700,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          image: DecorationImage(
            image: AssetImage(appDataImage.image),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
