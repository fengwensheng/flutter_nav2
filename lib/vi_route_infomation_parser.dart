import 'package:flutter/material.dart';

///route info object -> T data
///说白了就是拆解出要的数据
///以下设定要的数据为string类型的 注意汷型的使用
class ViRouteInformationParser extends RouteInformationParser<String> {
  const ViRouteInformationParser();
  @override
  Future<String> parseRouteInformation(RouteInformation routeInformation) =>
      Future.value(routeInformation.location);
}
