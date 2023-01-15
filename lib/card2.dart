import "package:flutter/material.dart";
import 'package:fooderlich/fooderlich_theme.dart';

class Card2 extends StatelessWidget {
  const Card2({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
              constraints: const BoxConstraints.expand(
                width: 350,
                height: 450
              ),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/mag2.png"),
                  fit: BoxFit.cover
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0)
                )
              ),
              child: Column(
                children: [
                  Expanded(
                    child:Stack( 
                      children: [
                        Positioned(
                          bottom: 16,
                          right: 16,
                          child: Text(
                            "Recipe",
                            style: FooderlichTheme.lightTextTheme.headline1,
                          )
                        ),
                        Positioned(
                          bottom: 70,
                          left: 16,
                          child: RotatedBox(
                            quarterTurns: 3,
                            child: Text( 
                              "Smoothies",
                              style: FooderlichTheme.lightTextTheme.headline1)
                            )
                        )
                      ],
                    ),
                  )
                ]
              )
        )
    );
  }
}