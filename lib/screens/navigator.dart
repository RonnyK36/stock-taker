import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stock_take/screens/home_page.dart';
import 'package:stock_take/screens/records.dart';
import 'package:stock_take/screens/stock_page.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({Key? key}) : super(key: key);

  @override
  _NavigationPageState createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  PageController? pageController;
  int pageIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController = PageController();
  }

  onPageChanged(int pageIndex) {
    setState(() {
      this.pageIndex = pageIndex;
    });
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
      body: PageView(
        children: [
          HomePage(),
          StockPage(),
          RecordsPage(),
        ],
        controller: pageController,
        onPageChanged: onPageChanged,
      ),
      bottomNavigationBar: CupertinoTabBar(
        onTap: onTap,
        currentIndex: pageIndex,
        activeColor: Color(0xff0015cf),
        inactiveColor: Colors.black,
        items: [
          BottomNavigationBarItem(
            label: 'RB Wines',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'Available Stock',
            icon: Icon(Icons.sticky_note_2_outlined),
          ),
          BottomNavigationBarItem(
            label: 'Shop records',
            icon: Icon(Icons.file_copy_outlined),
          ),
        ],
      ),
    );
  }
}
