import 'package:bubble_tea/components/drink_tile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/drink.dart';
import '../models/shop.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  void removeFromCart(Drink drink) {
    Provider.of<Shop>(context, listen: false).removeFromCart(drink);
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
                "Your Cart!",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 30,),
              Expanded(child: ListView.builder(
                itemCount: value.cart.length,
                itemBuilder: (c, i) {
                  Drink drink = value.cart[i];

                  return DrinkTile(
                      drink: drink,
                      onTap: () => removeFromCart(drink),
                      trailing: const Icon(Icons.delete));
                },
              )),
            MaterialButton(
              color: Colors.brown,
              padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
              onPressed: (){},
              child: const Text("Pay Now", style: TextStyle(color: Colors.white, fontSize: 16),))

            ],
          ),
        ),
      );
    });
  }
}
