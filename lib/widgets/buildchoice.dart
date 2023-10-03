import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class BuildCochic extends StatelessWidget {
  const BuildCochic(
      {Key? key,
      required this.txt,
      required this.select,
      required this.img,
      required this.color})
      : super(key: key);
  final String txt;
  final bool select;
  final String img;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      label: Container(
        width: 151.w,
        height: 56.h,
        alignment: AlignmentDirectional.center,
        child: Row(
          children: [
            Image.asset(
              img,
              width: 24.w,
              height: 24.h,
            ),
            const SizedBox(
              width: 12,
            ),
            Text(
              txt,
              style: GoogleFonts.inter(
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.start,
              overflow: TextOverflow.clip,
            ),
          ],
        ),
      ),
      elevation: 10, //addtional
      selected: select,
      selectedColor: color,
    );
  }
}
