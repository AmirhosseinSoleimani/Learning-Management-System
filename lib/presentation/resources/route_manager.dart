import 'package:flutter/material.dart';
import 'package:learning_management_system/presentation/authentication/sign_up/sign_up_screen.dart';
import 'package:learning_management_system/presentation/categories/screens/all_categories.dart';
import 'package:learning_management_system/presentation/resources/string_manager.dart';
import 'package:learning_management_system/presentation/splash/splash.dart';
import '../bottom_navigationBar/navigationBar_screen.dart';

class Routes{

  // Splash Screen
  static const String splash = '/';

  // NavigationBarScreen
  static const String navigationBar = '/home_page';

  // Authentication
  static const String signUp = '/signUp';

  // All Courses
  static const String allCourses = '/all_courses';

  // All Categories
  static const String allCategories = '/all_categories';

}


class RouteGenerator{
  static Route<dynamic> getRoute(RouteSettings routeSettings){
    switch(routeSettings.name){
      case Routes.splash:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case Routes.navigationBar:
        return CustomPageRoute(child: const NavigationBarScreen());
      case Routes.allCategories:
        return CustomPageRoute(child: const AllCategories());
      case Routes.signUp:
        return CustomPageRoute(child: const SignUpScreen());
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute(){
    return MaterialPageRoute(builder: (_) => Scaffold(
      appBar: AppBar(
        title: const Text(AppStringNoRouteFound.noRouteFound),
      ),
      body: const Center(
        child: Text(AppStringNoRouteFound.noRouteFound),
      ),
    ),);
  }
}


class CustomPageRoute extends PageRouteBuilder{
  final Widget child;
  CustomPageRoute({
    required this.child,}) : super(
    transitionDuration: const Duration(milliseconds: 500),
    reverseTransitionDuration: const Duration(milliseconds: 500),
    pageBuilder: (context,animation,secondaryAnimation) => child,
    transitionsBuilder: (context,animation,anotherAnimation,child){
      animation = CurvedAnimation(
          parent: animation,
          curve: Curves.linear);
      return SlideTransition(
        position: Tween<Offset>(
          begin: const Offset(1,0),
          end: Offset.zero,
        ).animate(animation),
        child: child,
      );
    });
}