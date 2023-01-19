import "package:flutter/material.dart";
import 'package:fooderlich/fooderlich_theme.dart';

class Card1 extends StatelessWidget{
  const Card1({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(16),
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 450
        ),
        decoration: const BoxDecoration( 
          image: DecorationImage(
            image: AssetImage("assets/magazine_pics/mag1.png"),
            fit: BoxFit.cover
          ),
          borderRadius: BorderRadius.all(Radius.circular(10.0))
        ),
        child: Stack(
          children: [
            Text(
              "Editor's choice",
              style: FooderlichTheme.darkTextTheme.bodyText1),
            Positioned(
              top: 20,
              child: Text(
                "The Art of Dough",
                style: FooderlichTheme.darkTextTheme.headline2,
              )
            ),
            Positioned(
              bottom: 30,
              right: 0,
              child: Text( 
                "Learn the perfect bread",
                style: FooderlichTheme.darkTextTheme.bodyText1
              )
            ),
            Positioned(
              bottom: 10,
              right: 0,
              child: Text(
                "Ray Wenderlich",
                style: FooderlichTheme.darkTextTheme.bodyText1
              ))
          ],
        )
      ),
    );
  }
}