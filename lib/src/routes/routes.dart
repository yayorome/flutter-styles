import 'package:flutter/material.dart';
import 'package:styles/src/pages/advanced_page.dart';
import 'package:styles/src/pages/basic_page.dart';
import 'package:styles/src/pages/medium_page.dart';

Map<String, WidgetBuilder> getAppRoutes() {
  return <String, WidgetBuilder>{
    'basic': (BuildContext context) => BasicPage(),
    'medium': (BuildContext context) => MediumPage(),
    'advanced': (BuildContext context) => AdvancedPage(),
  };
}
