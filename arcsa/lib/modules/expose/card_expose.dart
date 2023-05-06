import 'package:flutter/material.dart';

class CardExposeScreen extends StatefulWidget {
  const CardExposeScreen({super.key});

  @override
  State<CardExposeScreen> createState() => _ExposeScreenState();
}

class _ExposeScreenState extends State<CardExposeScreen> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Denuncia Ciudadana",
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16.0),
            const Text(
              "Artículo 421.-(...) La denuncia será pública, sin perjuicio de que los datos de identificación personal del denunciante, procesado o de la víctima, se guarden en reserva para su protección.",
              style: TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 24.0),
            const Text(
              "Acepta los términos y condiciones",
              style: TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 24.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  child: const Text("Cancelar"),
                  onPressed: () {},
                ),
                ElevatedButton(
                  child: const Text("Aceptar"),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
