import 'package:flutter/material.dart';

class ImageContainer extends StatelessWidget {
  const ImageContainer({super.key, required this.img});
  final String img;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 326,
      height: 160,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(img), fit: BoxFit.fill),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
