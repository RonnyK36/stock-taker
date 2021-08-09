import 'package:flutter/material.dart';

class BrandRecords extends StatefulWidget {
  const BrandRecords({Key? key}) : super(key: key);

  @override
  _BrandRecordsState createState() => _BrandRecordsState();
}

class _BrandRecordsState extends State<BrandRecords> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(child: Text('Brand Records')),
      ),
    );
  }
}
