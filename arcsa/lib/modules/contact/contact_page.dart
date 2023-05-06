import 'package:base_project/shared/widget/app_bar.dart';
import 'package:base_project/shared/widget/body_container.dart';
import 'package:base_project/shared/widget/text_field.dart';
import 'package:flutter/material.dart';
import '../../shared/widget/bottom_nav_bar.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    int currentIndex = 4;
    return Scaffold(
      backgroundColor: const Color(0xFF1B4568),
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBarWidget(titleAppBar: 'assets/contactanos.svg'),
      ),
      body: BodyContainerWidget(
          child: Column(
        children: [
          textFiel(context),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 4,
                          offset: const Offset(0, 3),
                        ),
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                  width: MediaQuery.of(context).size.width,
                  height: 211,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Row(
                    children: [
                      Container(
                        width: 35,
                        height: 211,
                        decoration: const BoxDecoration(
                          color: Color(0xFF6CC3E9),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            bottomLeft: Radius.circular(15),
                          ),
                        ),
                        child: const RotatedBox(
                          quarterTurns: -1,
                          child: Center(
                            child: Text(
                              'PLANTA CENTRAL',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Icon(Icons.location_on_outlined,
                                    color: Color(0XFF20295C)),
                                SizedBox(width: 5),
                                Text(
                                  'Av. Francisco de Orellana y Av. del Parque,\nGuayaquil - Ecuador',
                                  style: TextStyle(
                                    color: Color(0XFF676767),
                                    fontSize: 12,
                                    //fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Icon(Icons.phone_outlined,
                                    color: Color(0XFF20295C)),
                                SizedBox(width: 5),
                                Text(
                                  '(04) 372-7440 / Ext: 1007-1013-1016',
                                  style: TextStyle(
                                    fontSize: 12.3,
                                    color: Color(0XFF676767),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Icon(Icons.email_outlined,
                                    color: Color(0XFF20295C)),
                                SizedBox(width: 5),
                                Text(
                                    'atencionalusuario@controlsanitario.gob.ec',
                                    style: TextStyle(
                                      fontSize: 12.1,
                                      color: Color(0XFF676767),
                                    )),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Icon(Icons.access_time_outlined,
                                    color: Color(0XFF20295C)),
                                SizedBox(width: 5),
                                Text('Horario de 08h00 - 17h00',
                                    style: TextStyle(
                                      fontSize: 12.5,
                                      color: Color(0XFF676767),
                                    )),
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 20),
        ],
      )),
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
