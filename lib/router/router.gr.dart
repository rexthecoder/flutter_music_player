// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../app/explore_screen.dart';
import '../app/homepage.dart';

class Routes {
  static const String homePage = '/';
  static const String exploreScreen = '/explore-screen';
  static const all = <String>{
    homePage,
    exploreScreen,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.homePage, page: HomePage),
    RouteDef(Routes.exploreScreen, page: ExploreScreen),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    HomePage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => HomePage(),
        settings: data,
      );
    },
    ExploreScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ExploreScreen(),
        settings: data,
      );
    },
  };
}
