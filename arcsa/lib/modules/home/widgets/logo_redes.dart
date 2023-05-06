import 'package:flutter/material.dart';

class LogoRedes extends StatelessWidget {
  const LogoRedes({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('assets/logo-facebook.png'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('assets/logo-instagram.png'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('assets/logo-twitter.png'),
          )
        ],
      ),
    );
  }
}
