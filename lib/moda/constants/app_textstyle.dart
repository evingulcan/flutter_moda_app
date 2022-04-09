import 'package:flutter/material.dart';

class TextStyleConstants {
  static TextStyle get getTitleTextStyle {
    return const TextStyle(
      fontSize: 22,
      color: Colors.black,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle get getTitleFollow {
    return const TextStyle(
      fontFamily: 'Montserrat',
      fontSize: 14,
      color: Colors.white,
    );
  }

  static TextStyle get getTitleText {
    return const TextStyle(
        fontSize: 13, fontFamily: 'Montserrat', color: Colors.grey);
  }

  static TextStyle get getTitleLove {
    return const TextStyle(
        fontSize: 11, fontFamily: 'Montserrat', color: Colors.brown);
  }

  static TextStyle get getTittleK {
    return const TextStyle(
        fontSize: 16, fontFamily: 'Montserrat', color: Colors.brown);
  }

  static TextStyle get getTittleDetail {
    return const TextStyle(
        fontSize: 13, fontFamily: 'Montserrat', color: Colors.grey);
  }

  static TextStyle get getTittleDaisy {
    return const TextStyle(
      fontFamily: 'Montserrat',
      fontSize: 14,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle get getTittleAgo {
    return const TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 12,
        fontWeight: FontWeight.bold,
        color: Colors.grey);
  }

  static TextStyle get getTittleLaminated {
    return const TextStyle(
        fontFamily: 'Montserrat',
        color: Colors.white,
        fontWeight: FontWeight.bold);
  }
}
