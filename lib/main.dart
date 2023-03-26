import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages.dart/drawer.dart';
import 'pages.dart/home_page.dart';
import 'pages.dart/login_page.dart';
import 'utils/routes.dart';
void main()
{
  runApp(MyApp());
}

 class MyApp extends StatelessWidget{
  
@override
Widget build(BuildContext context){
  return MaterialApp(
    themeMode: ThemeMode.light,
    theme: ThemeData(primarySwatch:Colors.orange,
   ),
    darkTheme: ThemeData(brightness: Brightness.dark,),
    //initialRoute: 'pages.dart/drawer.dart',
    routes: {
      "/":(context) => HomePage(),
      MyRoutes.homeRoute :(context) => HomePage(),
      MyRoutes.loginRoute:(context) => LoginPage(),
      MyRoutes.drawerRoute:(context) => Mydrawer(),
    },
  );
}
}