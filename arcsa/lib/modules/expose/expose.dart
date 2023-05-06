import 'package:flutter/material.dart';
import '../../shared/widget/app_bar.dart';
import '../../shared/widget/body_container.dart';
import '../../shared/widget/bottom_nav_bar.dart';

class ExposeScreen extends StatefulWidget {
  const ExposeScreen({Key? key}) : super(key: key);

  @override
  State<ExposeScreen> createState() => _ExposeScreenState();
}

class _ExposeScreenState extends State<ExposeScreen> {
  @override
  Widget build(BuildContext context) {
    int currentIndex = 0;
    return Scaffold(
      backgroundColor: const Color(0xFF1B4568),
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBarWidget(titleAppBar: 'assets/logo-denuncia-ciudadana.svg'),
      ),
      body: BodyContainerWidget(
        child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "DENUNCIA CIUDADANA",
                      style: TextStyle(
                        color: Color(0xFF1B4568),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Para realizar un reporte de casos irregulares por favor ayúdenos a completar la siguiente información',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(width: 80, height: 5, color: Colors.green),
                        const SizedBox(width: 10),
                        Container(width: 80, height: 5, color: Colors.grey[350]),
                        const SizedBox(width: 10),
                        Container(width: 80, height: 5, color: Colors.grey[350]),
                        const SizedBox(width: 10),
                        Container(width: 80, height: 5, color: Colors.grey[350]),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'DETALLE DE LA DENUNCIA',
                            style: TextStyle(
                              fontSize: 20,
                              color: Color(0xFF1B4568),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Divider(thickness: 0.5, color: Color(0xFF7A7A7A)),
                          SizedBox(height: 15),
                          Text(
                            'Seleccione una opción*',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
