import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class BuildCard extends StatelessWidget {
  const BuildCard(
      {Key? key,
      required this.img,
      required this.firstText,
      required this.secondText,
      required this.thirdText})
      : super(key: key);
  final String img;
  final String firstText;
  final String secondText;
  final String thirdText;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            ImageIcon(
              AssetImage(img),
              size: 16.w,
              color: const Color(0xff717BBC),
            ),
             SizedBox(
              width: 2.w,
            ),
            Text(
              firstText,
              style:  GoogleFonts.inter(fontSize: 12.sp, fontWeight: FontWeight.bold),
            )
          ],
        ),
         SizedBox(
          height: 4.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(secondText,
                style:
                     GoogleFonts.inter(fontSize: 18.sp, fontWeight: FontWeight.bold)),
            Text(thirdText,
                style:
                     GoogleFonts.inter(fontSize: 14.sp, fontWeight: FontWeight.bold))
          ],
        ),
      ],
    );
  }
}
