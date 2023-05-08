import 'package:base_project/modules/contact/contact_page.dart';
import 'package:base_project/modules/expose/card_expose.dart';
import 'package:base_project/modules/expose/expose.dart';
import 'package:base_project/modules/home/pages/home_pages.dart';
import 'package:base_project/modules/shift/pharmacy_shift.dart';
import 'package:base_project/modules/splash_screen/splas_screen2.dart';
import 'package:base_project/modules/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';

import '../../modules/verifyEstablishmentsProducts/pages/verify_product_pages.dart';

final Map<String, WidgetBuilder> routes = {
  '/': (context) => const HomePage(),
  '/contact': (context) => const ContactPage(),
  '/verifyProduct': (context) => const VerifyProductPage(),
  '/shift': (context) => const ShiftScreen(),
  '/card_expose': (context) => const CardExposeScreen(),
  '/expose': (context) => const ExposeScreen(),
  '/splash': (context) => const SplashScreen(),
  '/splash2': (context) => const SplashScreen2(),
};
