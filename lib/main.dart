import 'package:flutter/material.dart';

import 'core/util/route_util.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "My App",
        initialRoute: "home",
        theme: ThemeData(primarySwatch: Colors.blue, fontFamily: "Roboto"),
        routes: RouteUtil.routes);
  }
}
