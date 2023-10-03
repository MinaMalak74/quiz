import 'package:flutter/material.dart';

class TabModel {
  final String txt;
  final Color txtColor;
  final Color containerBackGroundColor;
  final Color containerBorderColor;
 const TabModel(
      {required this.containerBackGroundColor,
      required this.containerBorderColor,
      required this.txt,
      required this.txtColor});
}
