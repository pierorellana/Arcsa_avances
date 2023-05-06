import 'package:flutter/material.dart';

class SecondaryContainer extends StatelessWidget {
  const SecondaryContainer({super.key, required this.heightSecondary});
  final double heightSecondary;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Positioned(
      top: height / heightSecondary,
      bottom: 65,
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30)),
        ),
        width: MediaQuery.of(context).size.width,
        height: 200,
      ),
    );
  }
}
