import 'package:flutter/material.dart';
import 'package:stock_take/config/config.dart';

Container bottomRecord(
  context, {
  required String brand,
  required String available,
  required String price,
}) {
  return Container(
    height: 50,
    width: double.infinity,
    // color: Colors.teal,
    child: Card(
      elevation: 2,
      shadowColor: Theme.of(context).accentColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.15,
              child: Text(
                brand,
                style: kRecordTileTS,
              ),
            ),
            Text(
              available,
              style: kRecordTileTS,
            ),
            Text(
              'KES $price',
              style: kRecordTileTS,
            ),
          ],
        ),
      ),
    ),
  );
}
