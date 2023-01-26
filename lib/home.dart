import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'models/models.dart';

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
 
  static List<Widget> pages = [
    ExploreScreen(),
    RecipesScreen(),
    const GroceryScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<TabManager>(
      builder: (context, tabManager, child){
        return Scaffold(
          appBar: AppBar(
            title: Text(widget.title),
          ),
          body: pages[tabManager.selectedTab],

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
            onTap: (index) {
              tabManager.goToTab(index);
            },
            currentIndex: tabManager.selectedTab,
      ),
    );
      }
    );
  }
}