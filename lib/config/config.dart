import 'package:flutter/material.dart';

class Config {
  static MediaQueryData? _mediaQueryData;
  static double? screenHeight;
  static double? screenWidth;
  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenHeight = _mediaQueryData!.size.height;
    screenWidth = _mediaQueryData!.size.width;
  }
}

const kBodyTitleTS = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 20,
  color: Color(0xff0015cf),
);

const kRecordTileTS = TextStyle(
  fontSize: 17,
);

const kBodyAmountTS = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 24,
  color: Color(0xff0015cf),
);

const kStockTitlesTS = TextStyle(
  fontSize: 15,
  fontWeight: FontWeight.w800,
  color: Color(0xff0015cf),
);

const kBrandTS = TextStyle(
  fontSize: 15,
  color: Color(0xff00cf29),
);
const kBodyFontTS = TextStyle(
  fontSize: 15,
);

const kDatesTS = TextStyle(
  fontSize: 16,
  fontStyle: FontStyle.italic,
  color: Color(0xFF616161),
);
