import 'package:flutter/material.dart';

class CustomPic extends StatelessWidget {
  const CustomPic({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 112 / 80,
      child: Container(
        decoration: ShapeDecoration(
          image: const DecorationImage(
            image: AssetImage('assets/images/Entertainment.jpg'),
            fit: BoxFit.fill,
          ),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
      ),
    );
  }
}
