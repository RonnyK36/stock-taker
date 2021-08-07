import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stock_take/screens/home_page.dart';
import 'package:stock_take/screens/records.dart';
import 'package:stock_take/screens/stock_page.dart';
import 'package:stock_take/screens/transaction.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({Key? key}) : super(key: key);

  @override
  _NavigationPageState createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  PageController? pageController;
  int pageIndex = 0;
  final inactiveColor = Color(0xff00cf29);
  final activeColor = Color(0xff0015cf);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController = PageController();
  }

  Widget loadPages() {
    // setState(() {
    //   this.pageIndex = pageIndex;
    // });
    switch (pageIndex) {
      case 1:
        return Transactions();
      case 2:
        return StockPage();
      case 3:
        return RecordsPage();
      case 0:
      default:
        return HomePage();
    }
  }

  onTap(int pageIndex) {
    pageController!.animateToPage(
      pageIndex,
      duration: Duration(milliseconds: 300),
      curve: Curves.bounceInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: loadPages(),
      bottomNavigationBar: BottomNavyBar(
        backgroundColor: Colors.white,
        onItemSelected: (index) {
          setState(() {
            this.pageIndex = index;
          });
        },
        selectedIndex: pageIndex,
        items: [
          BottomNavyBarItem(
            textAlign: TextAlign.center,
            activeColor: activeColor,
            inactiveColor: inactiveColor,
            title: Text('RhodaBase'),
            icon: Icon(Icons.home),
          ),
          BottomNavyBarItem(
            textAlign: TextAlign.center,
            activeColor: activeColor,
            inactiveColor: inactiveColor,
            title: Text('Buy or Sell'),
            icon: Icon(Icons.add),
          ),
          BottomNavyBarItem(
            textAlign: TextAlign.center,
            activeColor: activeColor,
            inactiveColor: inactiveColor,
            title: Text('Stock'),
            icon: Icon(Icons.event_available),
          ),
          BottomNavyBarItem(
            textAlign: TextAlign.center,
            activeColor: activeColor,
            inactiveColor: inactiveColor,
            title: Text('Records'),
            icon: Icon(Icons.history),
          ),
        ],
      ),
    );
  }
}
