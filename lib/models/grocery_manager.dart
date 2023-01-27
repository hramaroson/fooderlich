import 'package:flutter/material.dart';
import 'grocery_item.dart';


class GroceryManager extends ChangeNotifier{
  final _groceryItems = <GroceryItem>[];

  List<GroceryItem> get groceryItems => List.unmodifiable(_groceryItems);

  void addItem(GroceryItem item){
    _groceryItems.add(item);
    notifyListeners();
  }
}