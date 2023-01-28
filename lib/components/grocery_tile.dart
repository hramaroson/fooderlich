import 'package:flutter/material.dart';

import '../models/grocery_item.dart';

class GroceryTile extends StatelessWidget {
  final GroceryItem item;

  const GroceryTile({
    super.key,
    required this.item
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      color: Colors.red,
    );
  }
}