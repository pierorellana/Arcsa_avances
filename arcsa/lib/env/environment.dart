import 'package:base_project/env/config/base_config.dart';
import 'package:base_project/env/config/dev_config.dart';
import 'package:base_project/env/config/prod_config.dart';
import 'package:base_project/env/config/qa_config.dart';

class Environment {
  static final Environment _singleton = Environment._internal();

  factory Environment() => _singleton;

  Environment._internal();

  static const String dev = 'DEV';
  static const String qa = 'QA';
  static const String prod = 'PROD';

  BaseConfig? config;

  initConfig(String environment) {
    config = _getConfig(environment);
  }

  BaseConfig _getConfig(String environment) {
    switch (environment) {
      case Environment.qa:
        return TestingConfig();
      case Environment.prod:
        return ProductionConfig();
      default:
        return DevelopersConfig();
    }
  }
}
