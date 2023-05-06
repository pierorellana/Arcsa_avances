import 'package:base_project/shared/widget/body_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:styled_text/styled_text.dart';
import '../../../shared/widget/app_bar.dart';
import 'package:expansion_tile_group/expansion_tile_group.dart';
import '../../../shared/widget/bottom_nav_bar.dart';

class VerifyProductPage extends StatefulWidget {
  const VerifyProductPage({super.key});

  @override
  State<VerifyProductPage> createState() => _VerifyProductPageState();
}

class _VerifyProductPageState extends State<VerifyProductPage> {
  @override
  Widget build(BuildContext context) {
    int currentIndex = 0;
    return Scaffold(
      backgroundColor: const Color(0xFF1B4568),
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child:
            AppBarWidget(titleAppBar: 'assets/titulo-verificar-producto.svg'),
      ),
      body: BodyContainerWidget(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: StyledText(
                text: '<bold>Seleccione una opción</bold> para empezar', 
                tags: {
                  'bold': StyledTextTag(
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0XFF4898CF))),
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: ExpansionTileGroup(
                spaceBetweenItem: 16,
                toggleType: ToggleType.expandOnlyCurrent,
                children: [
                  ExpansionTileItem(
                    iconColor: const Color(0XFF1B4568),
                    collapsedIconColor: const Color(0XFF1B4568),
                    decoration: BoxDecoration(
                      color: const Color(0XFFF2F6FA),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 0,
                          blurRadius: 5,
                          offset: const Offset(0, 5),
                        ),
                      ],
                    ),
                    leading: SvgPicture.asset('assets/consulta-productos.svg',
                        width: 36, height: 36),
                    title: const Text('Consulta de productos',
                        style:
                            TextStyle(fontSize: 14, color: Color(0xff1B4568), fontWeight: FontWeight.bold)),
                    children: [
                      ListTile(
                        contentPadding: const EdgeInsets.only(left: 15),
                        style: ListTileStyle.drawer,
                        leading: SvgPicture.asset(
                            'assets/icon-registro-notificaciones.svg',
                            width: 19,
                            height: 19),
                        trailing: const Icon(
                          Icons.arrow_forward_ios,
                          color: Color(0xff1B4568),
                          size: 16,
                        ),
                        title: Text('Registro y notificaciones'),
                      ),
                      ListTile(
                        contentPadding: const EdgeInsets.only(left: 15),
                        style: ListTileStyle.drawer,
                        leading: SvgPicture.asset(
                            'assets/icon-suspendidos-cancelados.svg',
                            width: 19,
                            height: 19),
                        trailing: const Icon(
                          Icons.arrow_forward_ios,
                          color: Color(0xff1B4568),
                          size: 16,
                        ),
                        title: Text('Suspendidos y cancelados'),
                      ),
                      ListTile(
                        contentPadding: const EdgeInsets.only(left: 15),
                        style: ListTileStyle.drawer,
                        leading: SvgPicture.asset(
                            'assets/icon-requerimientos.svg',
                            width: 19,
                            height: 19),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: Color(0xff1B4568),
                          size: 16,
                        ),
                        title: Text('Requerimientos'),
                      )
                    ],
                  ),
                  ExpansionTileItem(
                    iconColor: const Color(0XFF1B4568),
                    collapsedIconColor: const Color(0XFF1B4568),
                    leading: SvgPicture.asset(
                        'assets/consulta-ensayo-medico.svg',
                        width: 36,
                        height: 36),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 0,
                          blurRadius: 5,
                          offset: const Offset(0, 5),
                        ),
                      ],
                      color: const Color(0XFFF2F6FA),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    title: const Text(
                      'Consultas de Ensayos Médicos',
                      style: TextStyle(fontSize: 14, color: Color(0xff1B4568), fontWeight: FontWeight.bold),
                    ),
                    children: [
                      ListTile(
                        contentPadding: const EdgeInsets.only(left: 15),
                        style: ListTileStyle.drawer,
                        leading: SvgPicture.asset(
                            'assets/icon-ensayo-aprobado.svg',
                            width: 19,
                            height: 19),
                        trailing: const Icon(
                          Icons.arrow_forward_ios,
                          color: Color(0xff1B4568),
                          size: 16,
                        ),
                        title: const Text('Ensayos Clínicos Aprobados'),
                      ),
                      ListTile(
                        contentPadding: const EdgeInsets.only(left: 15),
                        style: ListTileStyle.drawer,
                        leading: SvgPicture.asset(
                            'assets/icon-ensayo-rechazado.svg',
                            width: 19,
                            height: 19),
                        trailing: const Icon(
                          Icons.arrow_forward_ios,
                          color: Color(0xff1B4568),
                          size: 16,
                        ),
                        title: const Text('Ensayos Clínicos Rechazados'),
                      ),
                      ListTile(
                        contentPadding: const EdgeInsets.only(left: 15),
                        style: ListTileStyle.drawer,
                        leading: SvgPicture.asset(
                            'assets/icon-base-registro-contrato.svg',
                            width: 19,
                            height: 19),
                        trailing: const Icon(
                          Icons.arrow_forward_ios,
                          color: Color(0xff1B4568),
                          size: 16,
                        ),
                        title: const Text(
                          'Base de Registro de Centros de Investigación por Clínica',
                        ),
                      ),
                      ListTile(
                        contentPadding: const EdgeInsets.only(left: 15),
                        style: ListTileStyle.drawer,
                        leading: SvgPicture.asset(
                            'assets/icon-base-registro-contrato.svg',
                            width: 19,
                            height: 19),
                        trailing: const Icon(
                          Icons.arrow_forward_ios,
                          color: Color(0xff1B4568),
                          size: 16,
                        ),
                        title: const Text(
                          'Base de Registro de Organización de Investigación por Contrato',
                        ),
                      )
                    ],
                  ),
                  ExpansionTileItem(
                    iconColor: const Color(0XFF1B4568),
                    collapsedIconColor: const Color(0XFF1B4568),
                    leading: SvgPicture.asset(
                        'assets/consulta-establecimiento.svg',
                        width: 36,
                        height: 36),
                    decoration: BoxDecoration(
                      color: const Color(0XFFF2F6FA),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 0,
                          blurRadius: 5,
                          offset: const Offset(0, 5),
                        ),
                      ],
                    ),
                    title: const Text(
                      'Consulta de Establecimietos',
                      style: TextStyle(fontSize: 14, color: Color(0xff1B4568), fontWeight: FontWeight.bold),
                    ),
                    children: [
                      ListTile(
                        contentPadding: const EdgeInsets.only(left: 15),
                        style: ListTileStyle.drawer,
                        leading: SvgPicture.asset(
                            'assets/icon-permiso-funcionamiento.svg',
                            width: 19,
                            height: 19),
                        trailing: const Icon(
                          Icons.arrow_forward_ios,
                          color: Color(0xff1B4568),
                          size: 16,
                        ),
                        title: const Text(
                          'Permiso de funcionamiento',
                        ),
                      ),
                      ListTile(
                        contentPadding: const EdgeInsets.only(left: 15),
                        style: ListTileStyle.drawer,
                        leading: SvgPicture.asset(
                            'assets/icon-certificados-Buenas-practicas.svg',
                            width: 19,
                            height: 19),
                        trailing: const Icon(
                          Icons.arrow_forward_ios,
                          color: Color(0xff1B4568),
                          size: 16,
                        ),
                        title: const Text(
                          'Certificados de Buenas Prácticas',
                        ),
                      )
                    ],
                  ),
                ],
              ),
            )
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
