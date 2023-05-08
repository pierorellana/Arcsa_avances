import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SplashScreen2 extends StatefulWidget {
  const SplashScreen2({Key? key}) : super(key: key);

  @override
  State<SplashScreen2> createState() => _SplashScreen2State();
}

class _SplashScreen2State extends State<SplashScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1B4568),
      body: Stack(
        children: [
          Positioned(
            top: 90,
            left: 0,
            right: 0,
            child: SvgPicture.asset(
              'assets/logo-splash-screen2.svg',
            ),
          ),
          const Positioned(
            top: 200,
            left: 16,
            right: 16,
            child: Center(
              child: Text(
                'Descubre todo lo que puedes hacer con ARCSA Móvil, tu',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
