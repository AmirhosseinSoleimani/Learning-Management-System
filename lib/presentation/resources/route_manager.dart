import 'package:flutter/material.dart';
import 'package:learning_management_system/presentation/authentication/sign_up/sign_up_screen.dart';
import 'package:learning_management_system/presentation/resources/string_manager.dart';

import '../bottom_navigation/navigation_screen.dart';

class Routes{

  // NavigationBarScreen
  static const String navigationBar = '/';

  // Authentication
  static const String signUp = '/signUp';

}


class RouteGenerator{
  static Route<dynamic> getRoute(RouteSettings routeSettings){
    switch(routeSettings.name){
      case Routes.navigationBar:
        return MaterialPageRoute(builder: (_) => const NavigationScreen());
      case Routes.signUp:
        return MaterialPageRoute(builder: (_) => const SignUpScreen());
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute(){
    return MaterialPageRoute(builder: (_) => Scaffold(
      appBar: AppBar(
        title: const Text(AppString.noRouteFound),
      ),
      body: const Center(
        child: Text(AppString.noRouteFound),
      ),
    ),);
  }
}