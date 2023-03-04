import 'package:flutter/material.dart';
import 'package:learning_management_system/presentation/authentication/sign_up/sign_up_screen.dart';
import 'package:learning_management_system/presentation/categories/screens/all_categories.dart';
import 'package:learning_management_system/presentation/resources/string_manager.dart';
import 'package:learning_management_system/presentation/splash/splash.dart';
import '../authentication/sign_in/screens/sign_in_screen.dart';
import '../bottom_navigationBar/navigationBar_screen.dart';

class Routes{

  /// Splash Screen
  static const String splash = '/';

  /// NavigationBarScreen
  static const String navigationBar = '/home_page';

  /// Authentication SignUp
  static const String signUp = '/signUp';

  /// Authentication SignIn
  static const String singIn = '/signIn';

  /// All Courses
  static const String allCourses = '/all_courses';

  /// All Categories
  static const String allCategories = '/all_categories';


}


class RouteGenerator{
  static Route<dynamic> getRoute(RouteSettings routeSettings){
    switch(routeSettings.name){
      case Routes.splash:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case Routes.navigationBar:
        return CustomPageRouteToRight(child: const NavigationBarScreen());
      case Routes.allCategories:
        return CustomPageRouteToRight(child: const AllCategories());
      case Routes.signUp:
        return CustomPageRouteToRight(child: const SignUpScreen());
      case Routes.singIn:
        return CustomPageRouteToUp(child: const SignInScreen());
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


class CustomPageRouteToRight extends PageRouteBuilder{
  final Widget child;
  CustomPageRouteToRight({
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

class CustomPageRouteToUp extends PageRouteBuilder{
  final Widget child;
  CustomPageRouteToUp({
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
            begin: const Offset(0,1),
            end: Offset.zero,
          ).animate(animation),
          child: child,
        );
      });
}