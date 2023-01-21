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
        //Nested ListView
        return ListView(
          scrollDirection: Axis.vertical,
          children: [
            TodayRecipeListView(recipes: snapshot.data?.todayRecipes ?? [])
          ],
        );
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