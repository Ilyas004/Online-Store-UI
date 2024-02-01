
import 'package:flutter/material.dart';
import 'package:online_store/theme/colors.dart';

abstract class AppStyle {
  static const bigTitleStyle = TextStyle(
    fontSize: 32,
    color: Colors.black,
    fontFamily: 'Sen'
  );

  static const grayText16 = TextStyle(
      fontSize: 16,
      color: grayColor,
      fontFamily: 'Sen'
  );

  static const blackText16 = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: Colors.black,
      fontFamily: 'Sen'
  );

  static const blackText18 = TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w400,
      color: Colors.black,
      fontFamily: 'Sen'
  );

  static const blackText14 = TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: Colors.black,
      fontFamily: 'Sen'
  );

  static const blackTextBold16 = TextStyle(
      fontSize: 16,
      color: Colors.black,
      fontFamily: 'Bold-Sen'
  );

  static const blackTextBold11 = TextStyle(
      fontSize: 11,
      color: Colors.black,
      fontWeight: FontWeight.w700,
      fontFamily: 'Sen'
  );

  static const grayTextBold11 = TextStyle(
      fontSize: 11,
      color: grayColor,
      fontWeight: FontWeight.w700,
      fontFamily: 'Sen'
  );

  static const blackText20 = TextStyle(
      fontSize: 20,
      color: Colors.black,
      fontWeight: FontWeight.w400,
      fontFamily: 'Sen'
  );

  static const redText20 = TextStyle(
      fontSize: 20,
      color: Colors.red,
      fontWeight: FontWeight.w400,
      fontFamily: 'Sen'
  );

  static const redText16 = TextStyle(
      fontSize: 16,
      color: Colors.red,
      fontWeight: FontWeight.w400,
      fontFamily: 'Sen'
  );

  static const strikethroughGrayText16 = TextStyle(
      decoration: TextDecoration.lineThrough,
      fontSize: 16,
      color: grayColor,
      fontWeight: FontWeight.w400,
      fontFamily: 'Sen'
  );

  static const strikethroughGrayText14 = TextStyle(
      decoration: TextDecoration.lineThrough,
      fontSize: 14,
      color: grayColor,
      fontWeight: FontWeight.w400,
      fontFamily: 'Sen'
  );

  static const grayText14 = TextStyle(
      fontSize: 14,
      color: grayColor,
      fontWeight: FontWeight.w400,
      fontFamily: 'Sen'
  );

  static const whiteText14 = TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: Colors.white,
      fontFamily: 'Sen'
  );

  static const whiteText16 = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: Colors.white,
      fontFamily: 'Sen'
  );

  static const whiteText12 = TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: Colors.white,
      fontFamily: 'Sen'
  );
}
