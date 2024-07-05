import 'package:flutter/material.dart';
import '../presentation/iphone_14_15_pro_max_1_screen/level.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class AppRoutes {
  static const String iphone1415ProMax1Screen =
      '/iphone_14_15_pro_max_1_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> routes = {
    iphone1415ProMax1Screen: (context) => const Iphone1415ProMax1Screen(),
    initialRoute: (context) => const Iphone1415ProMax1Screen()
  };
}
