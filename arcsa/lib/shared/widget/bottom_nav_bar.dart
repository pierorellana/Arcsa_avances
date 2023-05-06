import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar(
      {super.key, required this.currentIndex, required this.onTap});
  final int currentIndex;
  final Function onTap;

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      //unselectedItemColor: Colors.white,
      selectedItemColor: Colors.white,
      onTap: (index) {
        setState(() {
          widget.onTap(index);
        });
      },
      currentIndex: widget.currentIndex,
      unselectedLabelStyle: const TextStyle(color: Colors.black),
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.transparent,
      elevation: 0,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/icon-verificar-establecimiento.svg',
            width: 30,
            height: 30,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/icon-turno-farmacia.svg',
            width: 30,
            height: 30,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/icon-tecnicos.svg',
            width: 30,
            height: 30,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/icon-denuncia-ciudadana-2.svg',
            width: 30,
            height: 30,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/icon-contactos.svg',
            width: 30,
            height: 30,
          ),
          label: '',
        ),
      ],
    );
  }
}
