import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key, required this.titleAppBar});
  final String titleAppBar;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      scrolledUnderElevation: 0,
      surfaceTintColor: Colors.transparent,
      iconTheme: const IconThemeData(color: Colors.white),
      centerTitle: true,
      title: validateTitle(titleAppBar),
      backgroundColor: Colors.transparent,
      elevation: 0,
    );
  }
}

validateTitle(titleAppBar) {
  if (titleAppBar.substring(0, 7) == 'assets/') {
    return SvgPicture.asset(
      titleAppBar,
      width: 100,
      height: 20,
    );
  } else {
    return Text(
      titleAppBar,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 12,
      ),
    );
  }
}

/*prueba({required String hola, required String hola2, required String hola3}) {
 return 1;
}
prueba(hola: 'hola', hola2: 'hola2', hola3: 'hola3'),*/