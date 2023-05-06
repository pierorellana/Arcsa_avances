import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    super.key,
    required this.title,
    required this.route,
    required this.image,
  });

  final String title;
  final String route;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        color: const Color(0xFFF2F6FA),
        child: ListTile(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          splashColor: const Color(0xFF6CC3E9),
          leading: SvgPicture.asset(
            image,
            width: 24,
            height: 24,
            color: const Color(0xFF1B4568),
          ),
          title: Text(
            title,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Color(0xFF1B4568),
            ),
          ),
          onTap: () {
            Navigator.pushNamed(context, route);
          },
        ),
      ),
    );
  }
}
