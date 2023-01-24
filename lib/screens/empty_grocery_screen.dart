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
            ),
            Text(
              "No Grocery",
              style: Theme.of(context).textTheme.headline6),
              const SizedBox(height: 16),
              const Text(
                "Shopping for ingredients?\n"
                "Tap the + button to right them down",
                textAlign: TextAlign.center),
              MaterialButton(
                textColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)
                ),
                color: Colors.green,
                child: const Text("Browse recipes"),
                onPressed: (){})
          ],
        ),
      )
    );
  }
}