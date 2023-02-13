import 'package:flutter/material.dart';
import 'package:ui/pages/detail_page.dart';
import 'package:ui/pages/pages.dart';

final Map<String, WidgetBuilder> appRoutes = {
  'home': (_) => HomePage(),
  'site': (_) => SitePage(),
  'login': (_) => LoginPage(),
  'food': (_) => FoodPage(),
  'detail': (_) => DetailPage(),
  'gallery': (_) => GalleryPage(),
};
