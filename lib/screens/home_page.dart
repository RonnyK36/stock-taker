import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stock_take/config/config.dart';
import 'package:stock_take/screens/make_sale.dart';
import 'package:stock_take/screens/purchase_products.dart';
import 'package:stock_take/widgets/carousel_card.dart';
import 'package:stock_take/widgets/service_card.dart';
import 'package:stock_take/widgets/some_record_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      // backgroundColor: Color(0xff020629),
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              child: Column(
                children: [
                  Card(
                    elevation: 5,
                    shadowColor: Colors.blue,
                    child: Container(
                      height: 40,
                      width: double.infinity,
                      child: Center(
                        child: Text(
                          'RhodaBase wines and Spirits',
                          style: TextStyle(
                            fontSize: 20,
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CarouselSlider(
                    items: [
                      carouselItem(
                        context,
                        description: ' more than yesterday',
                        color: Colors.amber,
                        title: 'SALES',
                        deviation: '2000',
                        amount: '5600',
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (c) => MakeSale(),
                          ),
                        ),
                      ),
                      carouselItem(
                        context,
                        description: ' less than yesterday',
                        color: Colors.blue,
                        title: 'PURCHASES',
                        deviation: '1500',
                        amount: '0',
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (c) => PurchaseProducts(),
                          ),
                        ),
                      ),
                    ],
                    options: CarouselOptions(
                      height: 200,
                      autoPlay: true,
                      enlargeCenterPage: true,
                      autoPlayInterval: Duration(seconds: 10),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      serviceCard(
                        context,
                        label: 'Sell',
                        image: 'images/sell.jpg',
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (c) => MakeSale(),
                          ),
                        ),
                      ),
                      serviceCard(
                        context,
                        label: 'Buy',
                        image: 'images/buy.jpg',
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (c) => PurchaseProducts(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Card(
              elevation: 2,
              shadowColor: Theme.of(context).accentColor,
              child: Container(
                height: 40,
                width: double.infinity,
                child: Center(
                  child: Text(
                    'Stock Overview (5)',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 50,
              width: double.infinity,
              // color: Colors.teal,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Brand',
                        style: kBodyTitleTS,
                      ),
                      Text(
                        'Available Stock',
                        style: kBodyTitleTS,
                      ),
                      Text(
                        'Unit price',
                        style: kBodyTitleTS,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            bottomRecord(
              context,
              brand: 'Kibao',
              available: '16',
              price: '200',
            ),
            bottomRecord(
              context,
              brand: 'Chrome',
              available: '46',
              price: '220',
            ),
            bottomRecord(
              context,
              brand: 'K.C',
              available: '21',
              price: '250',
            ),
            bottomRecord(
              context,
              brand: 'VAT 69',
              available: '5',
              price: '600',
            ),
            bottomRecord(
              context,
              brand: 'Best',
              available: '75',
              price: '140',
            ),
          ],
        ),
      ),
    );
  }
}
