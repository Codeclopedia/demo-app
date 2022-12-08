import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () {},
          child: Icon(
            Icons.menu,
            color: Colors.white,
            size: MediaQuery.of(context).size.width * 0.1,
          ),
        ),
        Image.asset(
          "assets/profileicon.png",
          scale: MediaQuery.of(context).size.width * 0.035,
        )
      ],
    );
  }
}
