// ignore_for_file: prefer_const_constructors

import 'package:app/models/card_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'cart_page.dart';
import 'companents/grocery_item_tile.dart';

class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () =>
            Navigator.push(context, MaterialPageRoute(builder: (context) {
          return CartPage();
        })),
        backgroundColor: Colors.black,
        child: Icon(Icons.shopping_bag),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 48,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: SizedBox(
                width: 400,
                child: Text(
                  'Good Morning',
                  textAlign: TextAlign.start,
                ),
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                'Lets`s order fresh items for you',
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 24,
            ),

            // divider-start
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Divider(),
            ),

            SizedBox(height: 24),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: SizedBox(
                width: 400,
                child: Text(
                  'Fresh Items',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),

            Expanded(child: Consumer<cardModel>(
              builder: (context, value, child) {
                return GridView.builder(
                    padding: EdgeInsets.all(12),
                    itemCount: value.shopItems.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1 / 1.3,
                    ),
                    itemBuilder: (context, index) {
                      return groceryItems(
                        itemName: value.shopItems[index][0],
                        itemPrice: value.shopItems[index][1],
                        imagePath: value.shopItems[index][2],
                        color: value.shopItems[index][3],
                        onPressed: () {
                          Provider.of<cardModel>(context, listen: false)
                              .addItemToCart(index);
                        },
                      );
                    });
              },
            )),

            // divider-end
          ],
        ),
      ),
    );
  }
}
