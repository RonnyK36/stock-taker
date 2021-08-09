import 'package:flutter/material.dart';
import 'package:stock_take/config/config.dart';
import 'package:stock_take/screens/brand_records.dart';
import 'package:stock_take/widgets/title_entry.dart';

GestureDetector stockCard(
  context, {
  required String brand,
  required String opening,
  required String closing,
  required String sales,
  required String price,
  required String total,
}) {
  return GestureDetector(
    onTap: () {
      print(brand);
      Navigator.push(
          context, MaterialPageRoute(builder: (c) => BrandRecords()));
    },
    child: Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Container(
          height: 40,
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              titleEntry(
                context,
                title: brand,
                style: kBrandTS,
              ),
              titleEntry(
                context,
                title: opening,
                style: kBodyFontTS,
              ),
              titleEntry(
                context,
                title: closing,
                style: kBodyFontTS,
              ),
              titleEntry(
                context,
                title: sales,
                style: kBrandTS,
              ),
              titleEntry(
                context,
                title: price,
                style: kBodyFontTS,
              ),
              titleEntry(
                context,
                title: total,
                style: kBrandTS,
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
