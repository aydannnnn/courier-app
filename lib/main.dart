import 'package:courier_app/const/colors.dart';
import 'package:courier_app/view/details_resi_screen.dart';
import 'package:courier_app/view/home_screen.dart';
import 'package:courier_app/view/landing_screen.dart';
import 'package:courier_app/view/login_screen.dart';
import 'package:courier_app/view/profile_screen.dart';
import 'package:courier_app/view/transaksi_screen.dart';
import 'package:flutter/material.dart';
import './view/spash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // fontFamily: Poppins,
        primarySwatch: Colors.red,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
              AppColor.orange,
            ),
            shape: MaterialStateProperty.all(
              StadiumBorder(),
            ),
            elevation: MaterialStateProperty.all(0),
          ),
        ),
        textTheme: const TextTheme(
          headlineLarge: TextStyle(color: AppColor.primary, fontSize: 25),
          bodyMedium: TextStyle(
            color: AppColor.secondary,
          ),
        ),
      ),
      home: SplashScreen(),
      routes: {
        LandingScreen.routeName: (context) => LandingScreen(),
        LoginScreen.routeName: (context) => LoginScreen(),
        HomeScreen.routeName:(context) => HomeScreen(),
        TransaksiScreen.routeName:(context) => TransaksiScreen(),
        DetailsResiScreen.routeName:(context) => DetailsResiScreen(),
        ProfileScreen.routename:(context) => ProfileScreen(),
      },
    );
  }
}