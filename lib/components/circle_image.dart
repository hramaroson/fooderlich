import 'package:flutter/material.dart';

class CircleImage extends StatelessWidget {
  final ImageProvider? imageProvider;
  final double imageRadius;

  const CircleImage({
    super.key,
    this.imageProvider,
    this.imageRadius = 20
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.white,
      radius: imageRadius,
      child: CircleAvatar(
        backgroundImage: imageProvider,
        radius: imageRadius - 5
      ),
    );
  }
}