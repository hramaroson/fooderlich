import 'package:flutter/material.dart';
import 'package:fooderlich/components/grocery_tile.dart';
import '../models/models.dart';

class GroceryListScreen extends StatelessWidget{
  final GroceryManager manager;

  const GroceryListScreen({
    super.key,
    required this.manager
  });

  @override
  Widget build(BuildContext context) {
    final groceryItems = manager.groceryItems;

    return Padding(
      padding: const EdgeInsets.all(16.0),

      child: ListView.separated(
        itemCount: groceryItems.length,
        itemBuilder: (context, index){
          final item = groceryItems[index];
          return GroceryTile(
            item: item,

            onComplete: (change){
              if(change != null){

              }
            },
          );
        }, 
        separatorBuilder:  (context, index){
          return const SizedBox(height: 16.0);
        }, 
       ),
    );
  }
}