import 'package:flutter/material.dart';

import '../models/models.dart';
import '../api/mock_fooderlich_service.dart';

class RecipesScreen extends StatelessWidget{
  final mockService = MockFooderlichService();

  RecipesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
    future: mockService.getExploreData(),

    builder: (context, AsyncSnapshot<ExploreData> snapshot){
      if(snapshot.connectionState == ConnectionState.done){
        return const Center(child: Text("Recipes screen"));
      }
      else {
        return const Center(
          child: CircularProgressIndicator()
        );
      }
    }
  );
  }
}