import 'package:flutter/material.dart';

Card serviceCard(
  context, {
  required String label,
  required String image,
  required VoidCallback onTap,
}) {
  return Card(
    elevation: 5,
    shadowColor: Theme.of(context).accentColor,
    child: GestureDetector(
      onTap: onTap,
      child: Container(
        height: 150,
        width: MediaQuery.of(context).size.width * 0.45,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage(image),
                ),
              ),
            ),
            Text(
              label,
              style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 20,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
