import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../shared/widget/app_bar.dart';
import '../../shared/widget/body_container.dart';
import '../../shared/widget/bottom_nav_bar.dart';

class ShiftScreen extends StatefulWidget {
  const ShiftScreen({Key? key}) : super(key: key);

  @override
  _ShiftScreenState createState() => _ShiftScreenState();
}

class _ShiftScreenState extends State<ShiftScreen> {
  String? _selectedProvince;

  final List<String> _provinces = [
    'Guayas',
    'Esmeraldas',
    'Manabí',
    'Los Ríos',
    'Cotopaxi',
    'Santa Elena',
    'Azuay',
    'Chimborazo',
    'Galápagos',
    'Imbabura',
  ];

  @override
  Widget build(BuildContext context) {
    int currentIndex = 0;
    return Scaffold(
      backgroundColor: const Color(0xFF1B4568),
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBarWidget(titleAppBar: 'assets/logo-turno.svg'),
      ),
      body: BodyContainerWidget(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SvgPicture.asset('assets/logo-turno2.svg'),
              const SizedBox( height: 15),
              const Text(
                'Consulte las farmacias que se encuentren disponibles',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: DropdownButtonFormField<String>(
                  decoration: const InputDecoration(
                    hintText: 'Seleccione una provincia',
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(horizontal: 20),
                  ),
                  value: _selectedProvince,
                  hint: const Text('Provincia'),
                  onChanged: (value) {
                    setState(() {
                      _selectedProvince = value;
                    });
                  },
                  items: _provinces.map((province) {
                    return DropdownMenuItem<String>(
                      value: province,
                      child: Text(province),
                    );
                  }).toList(),
                  icon: const Icon(Icons.arrow_drop_down),
                ),
              ),
              const SizedBox(height: 415),
              Stack(
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      margin: const EdgeInsets.all(20),
                      child: ElevatedButton.icon(
                        onPressed: () {
                          // Handle button press
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          onPrimary: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                            side: const BorderSide(
                                color: Color(0xFF6CC3E9), width: 2),
                          ),
                        ),
                        icon:
                            const Icon(Icons.search, color: Color(0xFF6CC3E9)),
                        label: const Text(
                          'Buscar por Geolocalización',
                          style: TextStyle(color: Color(0xFF6CC3E9)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
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
