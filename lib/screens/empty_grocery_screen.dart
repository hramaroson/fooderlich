import 'package:flutter/material.dart';

class EmptyGroceryscreen extends StatelessWidget{
  const EmptyGroceryscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: AspectRatio(
                aspectRatio: 1 / 1,
                child: Image.asset("assets/fooderlich_assets/empty_list.png"))
            )
          ],
        ),
      )
    );
  }
}