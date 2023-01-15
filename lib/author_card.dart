import 'package:flutter/material.dart';
import 'package:fooderlich/fooderlich_theme.dart';
import 'package:fooderlich/circle_image.dart';

class AuthorCard extends StatelessWidget{
  final String authorName;
  final String title;
  final ImageProvider? imageProvider;

  const AuthorCard({
    super.key, 
    required this.authorName,
    required this.title,
    this.imageProvider
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleImage(
            imageRadius: 28,
            imageProvider: imageProvider,
          ),
          const SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              Text( 
                authorName, 
                style: FooderlichTheme.lightTextTheme.headline2
              ),
              Text( 
                title,
                style: FooderlichTheme.lightTextTheme.headline3
              )
            ]    
          ),
          IconButton(
            icon: const Icon(Icons.favorite_border),
            iconSize: 30,
            color: Colors.grey[400],
            onPressed: (){
                const snackBar = SnackBar(content: Text("Favorite Pressed"));
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
            }
          )
        ],
      )

    );
  }
}