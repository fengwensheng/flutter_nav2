import 'package:flutter/material.dart';
import 'package:flutter_nav2/detail_page.dart';
import 'package:flutter_nav2/vi_route_infomation_parser.dart';
import 'package:flutter_nav2/vi_router_delegate.dart';
import 'home.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  const App();

  ///首先 MaterialApp() -> MaterialApp.router()
  @override
  Widget build(_) => MaterialApp.router(
        routeInformationParser: const ViRouteInformationParser(),
        routerDelegate: ViRouterDelegate(),
      );
}
