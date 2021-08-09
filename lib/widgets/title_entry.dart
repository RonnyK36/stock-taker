import 'package:flutter/material.dart';

Container titleEntry(
  context, {
  required String title,
  required TextStyle style,
}) {
  return Container(
    height: MediaQuery.of(context).size.height * 0.03,
    width: MediaQuery.of(context).size.width * 0.15,
    child: Center(
      child: Text(
        title,
        style: style,
      ),
    ),
  );
}
