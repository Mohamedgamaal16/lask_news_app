import 'package:flutter/material.dart';

class CustomPic extends StatelessWidget {
  const CustomPic({super.key, required this.imageUrl});
final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 112 / 80,
      child: Container(
        decoration: ShapeDecoration(
          image:  DecorationImage(
            image: NetworkImage(imageUrl),
            fit: BoxFit.fill,
          ),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
      ),
    );
  }
}
