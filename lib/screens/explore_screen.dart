import 'package:flutter/material.dart';
import 'package:fooderlich/components/components.dart';

import '../models/models.dart';
import '../api/mock_fooderlich_service.dart';

class ExploreScreen extends StatelessWidget {
  final mockService = MockFooderlichService();

  ExploreScreen ({super.key});

  @override
  Widget build(BuildContext context) {
   return FutureBuilder(
    future: mockService.getExploreData(),

    builder: (context, AsyncSnapshot<ExploreData> snapshot){
      if(snapshot.connectionState == ConnectionState.done){
        final recipes = snapshot.data?.todayRecipes ?? [];

        return TodayRecipeListView(recipes: recipes);
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