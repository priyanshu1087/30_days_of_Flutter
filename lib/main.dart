import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages.dart/drawer.dart';
import 'package:flutter_application_2/pages.dart/themes.dart';
import 'pages.dart/home_page.dart';
import 'pages.dart/login_page.dart';
import 'utils/routes.dart';
import 'pages.dart/themes.dart';
import 'models.dart/catalog.dart';
void main()
{
  runApp(MyApp());
}

 class MyApp extends StatelessWidget{
  
@override
Widget build(BuildContext context){
  return MaterialApp(
    themeMode: ThemeMode.light,
    theme:MyTheme.lightTheme(context),
    darkTheme:MyTheme.darkTheme(context),
    //initialRoute: 'pages.dart/drawer.dart',
    routes: {
      "/":(context) => LoginPage(),
      MyRoutes.homeRoute :(context) => HomePage(),
      MyRoutes.loginRoute:(context) => LoginPage(),
      MyRoutes.drawerRoute:(context) => Mydrawer(),
    },
  );
}
}