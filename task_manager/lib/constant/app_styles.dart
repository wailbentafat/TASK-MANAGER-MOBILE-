import 'package:flutter/material.dart';

class Appstyles {
  static const TextStyle title = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 36,
    color: Colors.black,
  );
  static const TextStyle label = TextStyle(
    color: Colors.grey,
    fontSize: 18,
    fontWeight: FontWeight.w500,
  );
  static const TextStyle button = TextStyle(
    color: Colors.white,
    fontSize: 22,
    fontWeight: FontWeight.w600,
  );
  static const TextStyle subtitle = TextStyle(
    color: Colors.black,
    fontSize: 30,
    fontWeight: FontWeight.w800,
  );
  static const TextStyle uncompleted = TextStyle(
    color: Colors.black,
    fontSize: 20,
    fontWeight: FontWeight.w500,
  );
  static const TextStyle completed = TextStyle(
    color: Colors.grey,
    fontSize: 20,
    fontWeight: FontWeight.w500,
    decoration: TextDecoration.lineThrough,
  );
}
