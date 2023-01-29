import 'package:flutter/material.dart';

import '../components/grocery_tile.dart';
import '../screens/grocery_item_screen.dart';
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
          return InkWell(
            child: GroceryTile(
              item: item,

              onComplete: (change){
                if(change != null){
                  manager.completeItem(index, change);
                }
              }
            ),
            onTap: (){
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context) => GroceryItemScreen(
                    originalItem: item,
                    onCreate: (item){}, 
                    onUpdate: (item){
                      manager.updateItem(item, index);
                      Navigator.pop(context);
                    })
                )
              );
            }
          );
        }, 
        separatorBuilder:  (context, index){
          return const SizedBox(height: 16.0);
        }
      ),
    );
  }
}