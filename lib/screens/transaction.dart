import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stock_take/screens/purchase_tab.dart';
import 'package:stock_take/screens/sale_tab.dart';

class Transactions extends StatefulWidget {
  const Transactions({Key? key}) : super(key: key);

  @override
  _TransactionsState createState() => _TransactionsState();
}

class _TransactionsState extends State<Transactions>
    with SingleTickerProviderStateMixin {
  TabController? tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(
      vsync: this,
      length: 2,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Transaction',
          style: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 22,
          ),
        ),
        centerTitle: true,
        bottom: TabBar(
          controller: tabController,
          isScrollable: false,
          labelPadding: EdgeInsets.all(12),
          labelStyle: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w800,
          ),
          tabs: [
            Text('SELL'),
            Text('BUY'),
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          SaleTab(),
          PurchaseTab(),
        ],
      ),
    );
  }
}
