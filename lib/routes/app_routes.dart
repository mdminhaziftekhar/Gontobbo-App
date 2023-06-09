import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gontobbo/screens/auth/driver_login_screen.dart';
import 'package:gontobbo/screens/auth/driver_signup_screen.dart';
import 'package:gontobbo/screens/auth/passenger_login_screen.dart';
import 'package:gontobbo/screens/auth/passenger_signup_screen.dart';
import 'package:gontobbo/screens/home/driver_home_screen.dart';
import 'package:gontobbo/screens/home/home_screen.dart';
import 'package:gontobbo/screens/profile/driver_profile.dart';
import 'package:gontobbo/screens/profile/user_profile.dart';
import 'package:gontobbo/screens/select_route/select_route_screen.dart';
import 'package:gontobbo/screens/selection/selection_screen.dart';

class AppRoutes{
  static const homeScreen = '/home-screen';
  static const selectionScreen = '/selection-screen';
  static const passengerLoginScreen = '/passenger-login-screen';
  static const passengerSignupScreen = '/passenger-signup-screen';
  static const driverLoginScreen = '/driver-login-screen';
  static const driverSignupScreen = '/driver-signup-screen';
  static const driverHomeScreen = '/driver-home-screen';
  static const selectRouteScreen = '/select-route-screen';
  static const userProfile = '/user-profile';
  static const driverProfile = '/driver-profile';
}

class AppRouter {
 static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
   switch (settings.name) {
     case AppRoutes.homeScreen:
       return MaterialPageRoute<dynamic>(
           builder: (_) => const HomeScreen(),
         settings: settings,
       );
     case AppRoutes.selectionScreen:
       return MaterialPageRoute<dynamic>(
         builder: (_) => const SelectionScreen(),
         settings: settings,
       );
     case AppRoutes.passengerLoginScreen:
       return MaterialPageRoute<dynamic>(
         builder: (_) => const PassengerLoginScreen(),
         settings: settings,
       );
     case AppRoutes.passengerSignupScreen:
       return MaterialPageRoute<dynamic>(
         builder: (_) => const PassengerSignupScreen(),
         settings: settings,
       );
     case AppRoutes.driverLoginScreen:
       return MaterialPageRoute<dynamic>(
         builder: (_) => const DriverLoginScreen(),
         settings: settings,
       );
     case AppRoutes.driverSignupScreen:
       return MaterialPageRoute<dynamic>(
         builder: (_) => const DriverSignupScreen(),
         settings: settings,
       );
     case AppRoutes.driverHomeScreen:
       return MaterialPageRoute<dynamic>(
         builder: (_) => const DriverHomeScreen(),
         settings: settings,
       );
     case AppRoutes.selectRouteScreen:
       return MaterialPageRoute<dynamic>(
         builder: (_) => const SelectRouteScreen(),
         settings: settings,
       );
     case AppRoutes.userProfile:
       return MaterialPageRoute<dynamic>(
         builder: (_) => const UserProfile(),
         settings: settings,
       );
     case AppRoutes.driverProfile:
       return MaterialPageRoute<dynamic>(
         builder: (_) => const DriverProfile(),
         settings: settings,
       );

     default:
       return null;
   }
 }

}
