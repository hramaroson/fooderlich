import 'package:flutter/painting.dart';

enum Importance{
  low,
  medium,
  high
}

class GroceryItem {
  final String id;

  GroceryItem({
    required this.id
  });
}