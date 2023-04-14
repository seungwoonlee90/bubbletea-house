import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/drink.dart';
import '../models/shop.dart';

class OrderPage extends StatefulWidget {
  final Drink drink;
  const OrderPage({Key? key, required this.drink}) : super(key: key);

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  double initSweet = 0.5;
  double initIce = 0.5;
  double initPearl = 0.5;
  void customMizedSweet(double value) {
    setState(() {
      initSweet = value;
    });
  }

  void customMizedIce(double value) {
    setState(() {
      initIce = value;
    });
  }

  void customMizedPearl(double value) {
    setState(() {
      initPearl = value;
    });
  }

  void addCart() {
    Provider.of<Shop>(context, listen: false).addToCart(widget.drink);
    Navigator.pop(context);
    showDialog(
        context: context,
        builder: ((context) => const AlertDialog(
              title: Text("Successfully added to cart!"),
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[200],
      appBar: AppBar(title: Text(widget.drink.name), elevation: 0),
      body: Column(children: [
        const SizedBox(
          height: 20,
        ),
        Image.asset(widget.drink.imagePath),
        Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(
                      width: 100,
                      child: Text(
                        "Sweet",
                        style: TextStyle(fontWeight: FontWeight.w600),
                      )),
                  Expanded(
                    child: Slider(
                        value: initSweet,
                        label: initSweet.toString(),
                        divisions: 4,
                        onChanged: (value) => customMizedSweet(value)),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(
                      width: 100,
                      child: Text("Ice",
                          style: TextStyle(fontWeight: FontWeight.w600))),
                  Expanded(
                    child: Slider(
                        value: initIce,
                        label: initIce.toString(),
                        divisions: 4,
                        onChanged: (value) => customMizedIce(value)),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(
                      width: 100,
                      child: Text("Pearl",
                          style: TextStyle(fontWeight: FontWeight.w600))),
                  Expanded(
                    child: Slider(
                        value: initPearl,
                        label: initPearl.toString(),
                        divisions: 4,
                        onChanged: (value) => customMizedPearl(value)),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              MaterialButton(
                  color: Colors.brown,
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                  onPressed: addCart,
                  child: const Text(
                    "Add To Cart!",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ))
            ],
          ),
        )
      ]),
    );
  }
}
