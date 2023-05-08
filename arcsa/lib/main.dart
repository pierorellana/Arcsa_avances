import 'package:base_project/env/environment.dart';
import 'package:base_project/shared/routes/pages_routes.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  String environment = const String.fromEnvironment('ENVIRONMENT',
      defaultValue: Environment.dev);
  Environment().initConfig(environment);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: ThemeData(
        useMaterial3: true,
      ),
      initialRoute: '/splash',
      routes: routes,
    );
  }
}
