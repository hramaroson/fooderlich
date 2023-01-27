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
  final Importance importance;
  final DateTime date;

  GroceryItem({
    required this.id, 
    required this.name,
    required this.color,
    required this.importance,
    required this.date
  });

  GroceryItem copyWith({
    String? id,
    String? name,
    Color? color,
    Importance? importance,
    DateTime? date}){ 
      return GroceryItem(
        id: id ?? this.id,
        name: name ?? this.name,
        color: color ?? this.color,
        importance: importance ?? this.importance,
        date: date ?? this.date
      );
  }
}