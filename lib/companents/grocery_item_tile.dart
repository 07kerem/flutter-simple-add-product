// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class groceryItems extends StatelessWidget {
  final String itemName;
  final String itemPrice;
  final String imagePath;
  final color;
  void Function()? onPressed;

  groceryItems(
      {super.key,
      required this.itemName,
      required this.itemPrice,
      required this.imagePath,
      required this.onPressed,
      this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: color[100], borderRadius: BorderRadius.circular(12)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              imagePath,
              height: 64,
            ),
            Text(itemName),
            MaterialButton(
              onPressed: onPressed,
              color: color[800],
              child: Text(
                '\$' + itemPrice,
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
