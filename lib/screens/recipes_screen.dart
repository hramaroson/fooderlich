import 'package:flutter/material.dart';


import '../components/components.dart';
import '../models/models.dart';
import '../api/mock_fooderlich_service.dart';

class RecipesScreen extends StatelessWidget{
  final exploreservice = MockFooderlichService();

  RecipesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: exploreservice.getRecipes(),

      builder: (context, AsyncSnapshot<List<SimpleRecipe>> snapshot){
      if(snapshot.connectionState == ConnectionState.done){
        return RecipesGridView(recipes:  snapshot.data?? []);
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