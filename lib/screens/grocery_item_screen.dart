import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/grocery_item.dart';

class GroceryItemScreen extends StatefulWidget{
  final Function(GroceryItem) onCreate;
  final Function(GroceryItem) onUpdate;

  final GroceryItem? originalItem;
  final bool isUpdating;

  const GroceryItemScreen({
    super.key,
    required this.onCreate,
    required this.onUpdate,
    this.originalItem}): isUpdating = (originalItem != null);
  
  @override
  State<GroceryItemScreen> createState() => GroceryItemScreenState();
}

class GroceryItemScreenState extends State<GroceryItemScreen>{
  final _nameController = TextEditingController();
  String _name = '';
  Color _currentColor = Colors.green;

  @override
  void initState() {
    super.initState();

    final originalItem = widget.originalItem;
    if(originalItem != null){
      _nameController.text = originalItem.name;
      _name = originalItem.name;
      _currentColor = originalItem.color;
      _nameController.addListener(() {
        setState(() {
          _name = _nameController.text;
        });
      });
    }
  }

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.check),
            onPressed: (){

            },
          )
        ],
        elevation: 0.0,
        title: Text(
          "Grocery Item",
          style: GoogleFonts.lato(fontWeight: FontWeight.w600)
        )
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            buildFieldName()
          ],
        ),
      ),
    );
  }

  Widget buildFieldName(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Item name",
          style: GoogleFonts.lato(fontSize: 28.0)
        ),
        TextField(
          controller: _nameController,
          cursorColor: _currentColor,
          decoration: InputDecoration(
            hintText: 'Eg. Apples, Banana, 1 Bag of salt',
            enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white)
            ), 
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: _currentColor)
            ),
            border: UnderlineInputBorder(
              borderSide: BorderSide(color: _currentColor)
            )
          ),
        )
        
      ],
    );
  }
}