import 'package:flutter/material.dart';
import 'screens/explore_screen.dart';

import "components/card2.dart";
import "components/card3.dart";

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
    const Card2(),
    const Card3()
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