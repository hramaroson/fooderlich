import "package:flutter/material.dart";
import "card1.dart";
import 'card2.dart';

class Home extends StatefulWidget {
  const Home({super.key, required this.title});
  final String title;

  @override
  State<Home> createState() => HomeState();
}

class HomeState extends State<Home> {
  int _selectedItemIndex = 0;

  static List<Widget> pages = [
    const Card1(),
    const Card2(),
    Container(color: Colors.green)
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
            icon: Icon(Icons.card_giftcard),
            label: 'Card'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card2'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card3'
          ),
        ],
        onTap: _onItemTapped,
        currentIndex: _selectedItemIndex,
      ),
    );
  }
}