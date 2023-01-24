import 'package:flutter/material.dart';
import 'screens/explore_screen.dart';
import 'screens/recipes_screen.dart';
import 'screens/grocery_screen.dart';

class Home extends StatefulWidget {
  const Home({super.key, required this.title});
  final String title;

  @override
  State<Home> createState() => HomeState();
}

class HomeState extends State<Home> {
  int _selectedItemIndex = 0;

  static List<Widget> pages = [
    ExploreScreen(),
    RecipesScreen(),
    const GroceryScreen()
  ];

  void _onItemTapped(int index){
    setState(() {
        _selectedItemIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: pages[_selectedItemIndex],

      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Explore'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Recipes'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'To Buy'
          ),
        ],
        onTap: _onItemTapped,
        currentIndex: _selectedItemIndex,
      ),
    );
  }
}