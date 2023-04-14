import 'package:bubble_tea/components/drink_tile.dart';
import 'package:bubble_tea/pages/order_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/drink.dart';
import '../models/shop.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({Key? key}) : super(key: key);

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  void goToOrderPage(Drink drink) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => OrderPage(drink: drink)));
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Shop>(builder: (context, value, child) {
      return SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              const Text(
                "Today's Menu",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 30,),
              Expanded(
                  child: ListView.builder(
                      itemCount: value.shop.length,
                      itemBuilder: ((c, i) {
                        Drink individualDrink = value.shop[i];

                        return DrinkTile(
                          drink: individualDrink,
                          onTap: () => goToOrderPage(individualDrink),
                          trailing: const Icon(Icons.arrow_forward),
                        );
                      })))
            ],
          ),
        ),
      );
    });
  }
}
