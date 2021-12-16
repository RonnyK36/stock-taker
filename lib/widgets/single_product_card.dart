import 'package:flutter/material.dart';
import 'package:stock_take/config/config.dart';

class SingleProductCard extends StatelessWidget {
  const SingleProductCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: EdgeInsets.all(5),
      child: Container(
        height: Config.screenHeight! * 0.2,
        width: Config.screenWidth! * 0.8,
        // color: Colors.amber,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: Config.screenHeight! * 0.19,
              width: Config.screenWidth! * 0.4,
              color: Colors.green,
              child: Center(child: Text('Image')),
            ),
            Container(
              color: Colors.red,
              height: Config.screenHeight! * 0.19,
              width: Config.screenWidth! * 0.55,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text('Details')],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
