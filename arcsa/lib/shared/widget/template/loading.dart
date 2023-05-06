import 'package:flutter/material.dart';

Widget loadingWidget() {
  return Positioned.fill(
    child: Container(
      color: Colors.transparent,
      height: double.infinity,
      width: double.infinity,
      child: Image.asset(
        'assets/cargando.gif',
      ),
    ),
  );
}
