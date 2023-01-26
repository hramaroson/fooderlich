import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:fooderlich/fooderlich_theme.dart';

class Card3 extends StatelessWidget{

  const Card3({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints.expand(
          width: 360, 
          height: 450
         ),
         decoration: const BoxDecoration(
          image: DecorationImage( 
            image: AssetImage("assets/magazine_pics/mag3.png"),
            fit: BoxFit.cover
          ),
          borderRadius: BorderRadius.all(Radius.circular(10.0))
         ),
         child: Stack(
          children: [
            Container( 
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.6),
                borderRadius: const BorderRadius.all(Radius.circular(10.0))
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //Header
                  const Icon(
                    Icons.book,
                    color: Colors.white,
                    size: 40
                  ),
                  const SizedBox(height: 8),
                  Text( 
                    "Recipe Trends",
                    style: FooderlichTheme.darkTextTheme.displayMedium,
                  ),
                  const SizedBox(height: 30),
                  //Chips
                  Center( 
                    child: Wrap(
                      alignment: WrapAlignment.start,
                      spacing: 12,
                      runSpacing: 12,
                      children: [
                        Chip(
                          label: Text('Healthy',
                            style: FooderlichTheme.darkTextTheme.bodyLarge),
                          backgroundColor: Colors.black.withOpacity(0.7),
                          onDeleted: () => log("delete"),
                        ),
                        Chip(
                          label: Text('Vegan',
                            style: FooderlichTheme.darkTextTheme.bodyLarge),
                          backgroundColor: Colors.black.withOpacity(0.7),
                          onDeleted: () => log("delete"),
                        ),
                        Chip(
                          label: Text('Carrots',
                            style: FooderlichTheme.darkTextTheme.bodyLarge),
                          backgroundColor: Colors.black.withOpacity(0.7),
                          onDeleted: () => log("delete"),
                        ),
                        Chip(
                          label: Text('Greens',
                            style: FooderlichTheme.darkTextTheme.bodyLarge),
                          backgroundColor: Colors.black.withOpacity(0.7),
                          onDeleted: () => log("delete"),
                        ),
                        Chip(
                          label: Text('Wheat',
                            style: FooderlichTheme.darkTextTheme.bodyLarge),
                          backgroundColor: Colors.black.withOpacity(0.7),
                          onDeleted: () => log("delete"),
                        ),
                        Chip(
                          label: Text('Pescetarian',
                            style: FooderlichTheme.darkTextTheme.bodyLarge),
                          backgroundColor: Colors.black.withOpacity(0.7),
                          onDeleted: () => log("delete"),
                        ),
                        Chip(
                          label: Text('Mint',
                            style: FooderlichTheme.darkTextTheme.bodyLarge),
                          backgroundColor: Colors.black.withOpacity(0.7),
                          onDeleted: () => log("delete"),
                        ),
                        Chip(
                          label: Text('Lemonglass',
                            style: FooderlichTheme.darkTextTheme.bodyLarge),
                          backgroundColor: Colors.black.withOpacity(0.7),
                          onDeleted: () => log("delete"),
                        )
                      ],
                    )
                    ,
                  ) 
                ],
              ),

            )
          ],
         )
      )
    );
  }
}