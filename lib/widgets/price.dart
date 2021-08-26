import 'package:flutter/material.dart';

Container priceInput(context) {
  return Container(
    height: 60,
    width: MediaQuery.of(context).size.width * 0.35,
    child: TextField(
      // controller: spController,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 3, horizontal: 5),
        labelText: 'Selling Price',
        labelStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Theme.of(context).primaryColor,
        ),
        alignLabelWithHint: true,
        prefixText: 'KES ',
        suffixText: '.00',
      ),
    ),
  );
}
