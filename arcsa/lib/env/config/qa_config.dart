import 'package:base_project/env/config/base_config.dart';

class TestingConfig extends BaseConfig {
  @override
  String get name => 'QA';

  @override
  String get serveraddress => 'SERVIDOR DE PRUEBAS QA';
}
