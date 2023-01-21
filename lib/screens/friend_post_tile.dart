import 'package:flutter/material.dart';

import '../components/components.dart';
import '../models/models.dart';

class FriendPostTile extends StatelessWidget{
  final Post post;
  const FriendPostTile({
    super.key,
    required this.post
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CircleImage(
          imageProvider: AssetImage(post.profileImageUrl),
          imageRadius: 20)
      ]
    );
  }
}