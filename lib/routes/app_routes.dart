import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gontobbo/screens/home/home_screen.dart';

class AppRoutes{
  static const homeScreen = '/home-screen';
}

class AppRouter {
 static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
   switch (settings.name) {
     case AppRoutes.homeScreen:
       return MaterialPageRoute<dynamic>(
           builder: (_) => const HomeScreen(),
         settings: settings,
       );
     default:
       return null;
   }
 }

}
