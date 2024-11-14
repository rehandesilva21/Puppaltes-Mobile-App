import 'package:flutter/material.dart';

class AppWidget {
  static TextStyle boldTextFeildStyle() {
    return const TextStyle(
        color: Colors.black,
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
        fontFamily: 'Poppins');
  }

  // ignore: non_constant_identifier_names
  static TextStyle HeadlineTextFeildStyle() {
    return const TextStyle(
        color: Colors.black,
        fontSize: 30.0,
        fontWeight: FontWeight.w900,
        fontFamily: 'Poppins');
  }

  static TextStyle lightTextFeildStyle() {
    return const TextStyle(
        color: Colors.black38,
        fontSize: 15.0,
        fontWeight: FontWeight.w500,
        fontFamily: 'Poppins');
  }

  static TextStyle semiBoldtTextFeildStyle() {
    return const TextStyle(
        color: Colors.black,
        fontSize: 18.0,
        fontWeight: FontWeight.w500,
        fontFamily: 'Poppins');
  }
}
