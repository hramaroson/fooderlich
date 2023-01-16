import 'package:flutter/material.dart';

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
            image: AssetImage("assets/mag2.png"),
            fit: BoxFit.cover
          )
         ),
      )
    );
  }
}