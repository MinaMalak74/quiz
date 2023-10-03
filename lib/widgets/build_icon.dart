import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BuildEmog extends StatelessWidget {
  const BuildEmog({Key? key, required this.img, required this.text})
      : super(key: key);
  final String img;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: 60,
              width: 60,
              decoration: const BoxDecoration(
                color: Color(0xffE4E7EC),
                shape: BoxShape.circle,
              ),
            ),
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(img),
                    fit: BoxFit.fill,
                  )),
            ),
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          text,
          style: GoogleFonts.inter(fontSize: 14, fontWeight: FontWeight.w400),
        ),
      ],
    );
  }
}
