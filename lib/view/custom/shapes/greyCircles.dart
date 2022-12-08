import 'package:flutter/material.dart';

class GreyCircle extends StatelessWidget {
  final double positionedtop;
  final double positionedright;
  final double size;
  const GreyCircle(
      {super.key,
      required this.positionedright,
      required this.positionedtop,
      required this.size});

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: positionedtop,
        right: positionedright,
        child: CircleAvatar(
          backgroundColor: Colors.grey.withOpacity(0.2),
          radius: size,
        ));
  }
}
