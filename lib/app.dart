import 'package:flutter/material.dart';
import 'package:students_data_app/utils/route_utils.dart';
import 'package:students_data_app/view/Pages/AddDataPage/adddatapage.dart';
import 'package:students_data_app/view/Pages/DetailPage/detailpage.dart';
import 'package:students_data_app/view/Pages/HomePage/homepage.dart';
import 'package:students_data_app/view/Pages/SplashScreen/splash_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primaryColor: Colors.blueGrey,
        colorScheme:
            ColorScheme.fromSwatch(primarySwatch: Colors.blueGrey).copyWith(
          secondary: Colors.blueGrey,
          brightness: Brightness.light,
        ),
      ),
      initialRoute: MyRoutes.splashScreen,
      routes: {
        MyRoutes.splashScreen: (context) => SplashScreen(),
        MyRoutes.HomePage: (context) => HomePage(),
        MyRoutes.DetailPage: (context) => DetailPage(),
        MyRoutes.AddDataPage: (context) => AddDataPage(),
      },
    );
  }
}
