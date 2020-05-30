

import 'package:flutter/material.dart';
import 'package:flutter_music/src/pages/login/login_page.dart';
import 'package:flutter_music/src/pages/navigator/navigator_page.dart';
import 'package:flutter_music/src/pages/scan/brcode_scan_page.dart';
import 'package:flutter_music/src/pages/startpage/start_page.dart';

//配置路由
final routes = {
  '/': (context) => StartPage(),
  '/navigator': (context) => NavigatorPage(),
  '/login': (context)=> LoginPage(),
  '/brcodescan': (context)=> BrcodeScanpage()
};

var onGenerateRoute = (RouteSettings settings) {
  // 统一处理
  final String name = settings.name;
  final Function pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      final Route route =
          MaterialPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
};