import 'package:flutter/material.dart';
import 'package:flutter_nav2/detail_page.dart';

import 'home.dart';

///注意generic T与parser传出的一致
class ViRouterDelegate extends RouterDelegate<String>
    with PopNavigatorRouterDelegateMixin {
  @override
  void addListener(VoidCallback listener) {
    // TODO: implement addListener
  }

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      pages: [
        MaterialPage(
          name: '/detail',
          child: DetailPage(),
        ),
        MaterialPage(
          name: '/',
          child: Home(),
        ),
      ],
    );
  }

  @override
  Future<bool> popRoute() {
    return Future.value(true);
  }

  @override
  void removeListener(VoidCallback listener) {
    // TODO: implement removeListener
  }

  ///与paser的操要作相反 T data/cofig -> path/route info
  @override
  Future<RouteInformation> setNewRoutePath(configuration) {
    return Future.value(RouteInformation(location: configuration));
  }

  @override
  GlobalKey<NavigatorState>? get navigatorKey => GlobalKey<NavigatorState>();
}
