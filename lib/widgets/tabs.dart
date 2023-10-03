import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TabWidget extends StatelessWidget {
  const TabWidget(
      {super.key,
      required this.txt,
      required this.containerBackGroundColor,
      required this.txtBackGroundColor,
      required this.borderColor});
  final String txt;
  final Color containerBackGroundColor;
  final Color txtBackGroundColor;
  final Color borderColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(999),
        color: containerBackGroundColor,
        border: Border.all(
          color: borderColor,
        ),
      ),
      child: Text(
        txt,
        style: TextStyle(
            fontSize: 16.sp,
            color: txtBackGroundColor,
            fontWeight: FontWeight.w500),
      ),
    );
  }
}
