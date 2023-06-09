import 'package:flutter/material.dart';
import 'pages.dart/home_page.dart';
import 'pages.dart/login_page.dart';
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
    routes: {
      "/":(context) => LoginPage(),
      "/home":(context) => HomePage(),
      "/login":(context) => LoginPage(),
    },
  );
}
}