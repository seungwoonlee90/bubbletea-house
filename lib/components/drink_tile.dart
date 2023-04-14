import 'package:flutter/material.dart';
import '../models/drink.dart';

class DrinkTile extends StatelessWidget {
  final Drink drink;
  void Function()? onTap;
  final Widget trailing;
  DrinkTile({
    Key? key,
    required this.drink,
    required this.onTap,
    required this.trailing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.brown[100], borderRadius: BorderRadius.circular(12)),
        margin: const EdgeInsets.only(bottom: 10),
        child: ListTile(
          title: Text(drink.name),
          subtitle: Text(drink.price),
          leading: Image.asset(drink.imagePath),
          trailing: trailing,
        ),
      ),
    );
  }
}
