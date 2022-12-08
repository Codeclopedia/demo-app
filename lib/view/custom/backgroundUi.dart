import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/custom/shapes/greyCircles.dart';

class BackgroundUi extends StatelessWidget {
  const BackgroundUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.5,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(45),
              bottomRight: Radius.circular(45))),
      child: Stack(
        children: [
          GreyCircle(
              positionedright: -MediaQuery.of(context).size.width * 0.06,
              positionedtop: -MediaQuery.of(context).size.height * 0.04,
              size: MediaQuery.of(context).size.width * 0.2),
          GreyCircle(
              positionedright: MediaQuery.of(context).size.width * 0.14,
              positionedtop: MediaQuery.of(context).size.height * 0.14,
              size: MediaQuery.of(context).size.width * 0.15),
          GreyCircle(
              positionedright: MediaQuery.of(context).size.width * 0.34,
              positionedtop: MediaQuery.of(context).size.height * 0.06,
              size: MediaQuery.of(context).size.width * 0.1),
        ],
      ),
    );
  }
}
