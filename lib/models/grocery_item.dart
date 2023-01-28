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
  final int quantity;
  final bool isComplete;

  GroceryItem({
    required this.id, 
    required this.name,
    required this.color,
    required this.importance,
    required this.date, 
    required this.quantity,
    this.isComplete = false
  });

  GroceryItem copyWith({
    String? id,
    String? name,
    Color? color,
    Importance? importance,
    DateTime? date,
    int? quantity,
    bool? isComplete
    }) { 
      return GroceryItem(
        id: id ?? this.id,
        name: name ?? this.name,
        color: color ?? this.color,
        importance: importance ?? this.importance,
        date: date ?? this.date,
        quantity: quantity ?? this.quantity,
        isComplete: isComplete ?? this.isComplete
      );
  }
}