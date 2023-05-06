import 'package:base_project/env/config/base_config.dart';

class ProductionConfig extends BaseConfig {
  @override
  String get name => 'PROD';

  @override
  String get serveraddress => 'SERVIDOR DE PRODUCCION';
}
