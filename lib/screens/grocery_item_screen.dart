import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:intl/intl.dart';

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
  Importance _importance = Importance.low;
  DateTime _dueDate = DateTime.now();
  TimeOfDay _timeOfDay = TimeOfDay.now();

  @override
  void initState() {
    super.initState();

    final originalItem = widget.originalItem;
    if(originalItem != null){
      _nameController.text = originalItem.name;
      _name = originalItem.name;
      _currentColor = originalItem.color;
      _importance = originalItem.importance;
      final date = originalItem.date;
      _timeOfDay = TimeOfDay(hour: date.hour, minute: date.minute);

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
            buildFieldName(),
            buildImportanceField(),
            buildDateField(context),
            buildTimeField(context),
            buildColorPickerField(context)
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

  Widget buildImportanceField(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Importance',
          style: GoogleFonts.lato(fontSize: 28.0)
        ),
        Wrap(
          spacing: 10,
          children: [
            ChoiceChip(
              label: const Text(
                'Low',
                style: TextStyle(color: Colors.white)
              ),
              selected: _importance == Importance.low,
              selectedColor: Colors.black,
              onSelected: (selected){
                setState(() => _importance = Importance.low);
              },
            ),
            ChoiceChip(
              label: const Text(
                'Medium',
                style: TextStyle(color: Colors.white)
              ),
              selected: _importance == Importance.medium,
              selectedColor: Colors.black,
              onSelected: (selected){
                setState(() => _importance = Importance.medium);
              },
            ),
            ChoiceChip(
              label: const Text(
                'High',
                style: TextStyle(color: Colors.white)
              ),
              selected: _importance == Importance.high,
              selectedColor: Colors.black,
              onSelected: (selected){
                setState(() => _importance = Importance.high);
              },
            )
          ],
        )
      ],
    );
  }

  Widget buildDateField(BuildContext context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
              Text(
                'Date',
                style:GoogleFonts.lato(fontSize: 28.0)
              ),
              TextButton(
                child: const Text('Select'),
                onPressed: () async {
                  final currentDate = DateTime.now();

                  final selectedDate = await showDatePicker(
                    context: context, 
                    initialDate: currentDate,
                    firstDate: currentDate, 
                    lastDate: DateTime(currentDate.year + 5)
                  );
                  setState(() {
                    if(selectedDate != null){
                      _dueDate = selectedDate;
                    }

                  });
                })
          ]),
          Text(DateFormat('yyyy-MM-dd').format(_dueDate))
      ],
    );
  }

  Widget buildTimeField(BuildContext context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Time of Day',
              style:GoogleFonts.lato(fontSize: 28.0)
            ), 
            TextButton(
              child: const Text('Select'),
              onPressed: () async {
                final timeOfDay = await showTimePicker(
                  context: context, 
                  initialTime: TimeOfDay.now());

                  if(timeOfDay != null){
                    setState(() {
                      _timeOfDay = timeOfDay;
                    });
                  }
              },
            )
          ],
        ),
        Text(_timeOfDay.format(context))
      ],
    );
  }
  
  Widget buildColorPickerField(BuildContext context){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              height: 50.0,
              width: 10.0,
              color: _currentColor,
            ),
            const SizedBox(width: 8.0),
            Text(
              'Color',
              style: GoogleFonts.lato(fontSize: 28.0),
            ),
          ],
        ),
        TextButton(
          child: const Text('Select'),
          onPressed: (){
            showDialog(
              context: context, 
              builder: (context) {
                return AlertDialog(
                  content: BlockPicker(
                    pickerColor: Colors.white,
                    onColorChanged: (color){
                      setState(() {
                        _currentColor = color;
                      });
                    },
                  ),
                  actions: [
                    TextButton(
                      child: const Text('Save'),
                      onPressed: () => Navigator.of(context).pop(),
                    )
                  ],
                );
              }
            );
          },
        )
      ],
    );
  }
}