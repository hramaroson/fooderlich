import 'package:flutter/material.dart';
import 'package:fooderlich/components/components.dart';
import '../models/models.dart';

class TodayRecipeListView extends StatelessWidget{
  final List<ExploreRecipe> recipes;

  const TodayRecipeListView({
    super.key,
    required this.recipes
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
        top: 16
        ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Recipe of the Day 🍳",
            style: Theme.of(context).textTheme.headline1
          ),
          const SizedBox(height: 6),
          Container(
            height: 600,
            color: Colors.transparent,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: recipes.length,

              itemBuilder: (context, index) {
                final recipe = recipes[index];
                return buildCard(recipe);
              },

              separatorBuilder: (context, index) {
                return const SizedBox(width: 16);
              },
            ),
          )
        ],
      ),
    );
  }
  Widget buildCard(ExploreRecipe recipe){
    if(recipe.cardType == RecipeCardType.card1){
      return const Card1();
    } else if(recipe.cardType == RecipeCardType.card2){
      return const Card2();
    } else if(recipe.cardType == RecipeCardType.card3){
      return const Card3();
    } else {
      throw Exception('This card doesn\'t exist yet');
    }
  }
}