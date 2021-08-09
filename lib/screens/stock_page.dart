import 'package:flutter/material.dart';
import 'package:stock_take/config/config.dart';
import 'package:stock_take/widgets/stock_card.dart';
import 'package:stock_take/widgets/title_entry.dart';

class StockPage extends StatefulWidget {
  const StockPage({Key? key}) : super(key: key);

  @override
  _StockPageState createState() => _StockPageState();
}

class _StockPageState extends State<StockPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: ListView(
            children: [
              Card(
                elevation: 2,
                shadowColor: Theme.of(context).primaryColor,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Container(
                    height: 40,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        titleEntry(context,
                            title: 'Brand', style: kStockTitlesTS),
                        titleEntry(context,
                            title: 'Opening', style: kStockTitlesTS),
                        titleEntry(context,
                            title: 'Closing', style: kStockTitlesTS),
                        titleEntry(context,
                            title: 'Sales', style: kStockTitlesTS),
                        titleEntry(context,
                            title: 'Price(1)', style: kStockTitlesTS),
                        titleEntry(context,
                            title: 'Total', style: kStockTitlesTS),
                      ],
                    ),
                  ),
                ),
              ),
              stockCard(
                context,
                brand: 'Chrome',
                total: '2200',
                opening: '45',
                closing: '39',
                sales: '12',
                price: '220',
              ),
              stockCard(
                context,
                brand: 'Kibao',
                total: '2000',
                opening: '27',
                closing: '11',
                sales: '9',
                price: '200',
              ),
              stockCard(
                context,
                brand: 'Tusker',
                total: '1600',
                opening: '24',
                closing: '9',
                sales: '10',
                price: '200',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
