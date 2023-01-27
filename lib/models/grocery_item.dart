import 'package:flutter/painting.dart';

enum Importance{
  low,
  medium,
  high
}

class GroceryItem {
  final String id;
  final String name;
  final Color color;

  GroceryItem({
    required this.id, 
    required this.name,
    required this.color
  });

  GroceryItem copyWith({
    String? id,
    String? name,
    Color? color}){ 
      return GroceryItem(
        id: id ?? this.id,
        name: name ?? this.name,
        color: color ?? this.color
      );
  }
}