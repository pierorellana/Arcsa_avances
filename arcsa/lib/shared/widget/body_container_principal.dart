import 'package:flutter/material.dart';

class BodyContainerPrincipalWidget extends StatelessWidget {
  const BodyContainerPrincipalWidget({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
            bottomLeft: Radius.circular(0),
            bottomRight: Radius.circular(0)),
      ),
      height: MediaQuery.of(context).size.height / 0,
      //756,
      width: MediaQuery.of(context).size.width,
      child: child,
    );
  }
}
