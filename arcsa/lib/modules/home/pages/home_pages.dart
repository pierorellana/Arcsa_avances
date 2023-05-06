import 'package:base_project/shared/widget/card_widget.dart';
import 'package:flutter/material.dart';
import '../../../shared/widget/app_bar.dart';
import '../../../shared/widget/body_container_principal.dart';
import '../widgets/logo_redes.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1B4568),
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBarWidget(titleAppBar: 'assets/logo-home.svg'),
      ),
      body: BodyContainerPrincipalWidget(
        child: Column(
          children: [
            Image.asset('assets/logo-arcsa1.jpg', width: 70, height: 70),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(right: 40, left: 40, bottom: 10, top: 0),
              child: RichText(
                text: const TextSpan(
                  text: '¿En qué ',
                  style: TextStyle(color: Colors.black, fontSize: 18),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'te podemos ayudar',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: ' hoy?',
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
            const CardWidget(title: 'Verificar Establecimientos y Productos', route: '/verifyProduct', image: ('assets/icon-verificar-establecimiento.svg')),
            const CardWidget(title: 'Buscar Farmacias de Turno', route: '/shift', image: ('assets/icon-turno-farmacia.svg')),
            const CardWidget(title: 'Denuncia Ciudadana', route: '/expose', image: ('assets/icon-denuncia-ciudadana.svg')),
            const CardWidget(title: 'Buscar Técnicos', route: '/shift', image: ('assets/icon-tecnicos.svg')),
            const CardWidget(title: 'Contáctenos', route: '/contact', image: ('assets/icon-contactos.svg')),
            const LogoRedes(),
          ],
        ),
      ),
    );
  }
}
