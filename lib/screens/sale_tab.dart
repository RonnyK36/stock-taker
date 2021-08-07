import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stock_take/config/config.dart';

class SaleTab extends StatefulWidget {
  const SaleTab({Key? key}) : super(key: key);

  @override
  _SaleTabState createState() => _SaleTabState();
}

class _SaleTabState extends State<SaleTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          Container(
            height: 50,
            width: double.infinity,
            child: TextField(),
          ),
          Center(
            child: Container(
              color: Colors.green,
              height: 40,
              width: 200,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Chrome'),
                  Text('200'),
                ],
              ),
            ),
          ),
          SizedBox(height: 30),
          Center(
            child: Card(
              elevation: 2,
              shadowColor: Theme.of(context).accentColor,
              child: Container(
                padding: EdgeInsets.all(10),
                height: 150,
                width: MediaQuery.of(context).size.width * 0.9,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Total sales today (updating live)',
                      style: kBodyTitleTS,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'M-Pesa',
                            style: TextStyle(
                              fontSize: 18,
                              color: Color(0xff00cf29),
                            ),
                          ),
                          Text(
                            'Cash',
                            style: TextStyle(
                              fontSize: 18,
                              color: Color(0xff00cf29),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'KES 2400',
                          style: kBodyAmountTS,
                        ),
                        Text(
                          'KES 300',
                          style: kBodyAmountTS,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Center(
            child: Card(
              elevation: 2,
              shadowColor: Theme.of(context).accentColor,
              child: Container(
                height: 150,
                width: MediaQuery.of(context).size.width * 0.9,
                padding: EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Select a mode of payment',
                      style: kBodyTitleTS,
                    ),
                    ToggleButtons(
                      children: [
                        Text('M-pesa'),
                        Text('Cash'),
                      ],
                      isSelected: [false, true],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        OutlinedButton(
                          onPressed: () => print('Updating'),
                          child: Text('M-Pesa'),
                        ),
                        OutlinedButton(
                          onPressed: () {},
                          child: Text('Cash'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Center(
            child: Container(
              height: 40,
              width: MediaQuery.of(context).size.width * 0.7,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Color(0xff00cf29),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                onPressed: () {},
                child: Text(
                  'CONFIRM',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
