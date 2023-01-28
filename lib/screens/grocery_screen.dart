import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/grocery_manager.dart';

import 'empty_grocery_screen.dart';
import 'grocery_item_screen.dart';
import 'grocery_list_screen.dart';

class GroceryScreen extends StatelessWidget{
  const GroceryScreen({super.key});

  Widget buildGroceryScreen(){
    return Consumer<GroceryManager>(
      builder: (context, manager, child){
        if(manager.groceryItems.isNotEmpty){
          return GroceryListScreen(manager: manager);
        } else {
          return const EmptyGroceryscreen();
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: (){
          final manager = Provider.of<GroceryManager>(
            context, listen: false );
          
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => GroceryItemScreen(
                onCreate: (item) {
                  manager.addItem(item);
                  Navigator.pop(context);
                },
                onUpdate: (item){},
              )
            ));
        }),
      body: buildGroceryScreen(),
    );
  }
}