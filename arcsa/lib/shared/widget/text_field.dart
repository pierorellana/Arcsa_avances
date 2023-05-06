import 'package:flutter/material.dart';

Widget textFiel(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(20),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 0,
            blurRadius: 15,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(10),
          constraints: BoxConstraints(
            maxHeight: 45,
            maxWidth: MediaQuery.of(context).size.width,
          ),
          hintText: 'Buscar por zona o provincia',
          hintStyle: const TextStyle(
            color: Colors.grey,
            fontSize: 15,
          ),
          suffixIcon: Container(
            decoration: const BoxDecoration(
                color: Color(0xFF6CC3E9),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                )),
            height: 63,
            child: IconButton(
              icon: const Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {
                //print('Buscar');
              },
            ),
          ),
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none),
        ),
      ),
    ),
  );
}
