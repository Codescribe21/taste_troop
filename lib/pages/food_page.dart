import 'package:flutter/material.dart';

import 'package:taste_troop/models/food.dart';

class FoodPage extends StatefulWidget {
  final Food food;

  const FoodPage({
    Key? key,
    required this.food,
  }) : super(key: key);

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(widget.food.imagePath),
      ],
    );
  }
}
