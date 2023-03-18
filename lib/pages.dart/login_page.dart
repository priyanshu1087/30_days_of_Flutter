import 'package:flutter/material.dart';


class LoginPage extends StatelessWidget{

  @override
  Widget build(BuildContext context){
  return Material(
    child: Center(child: 
    Text("Abbe sale ye login page hi hain ",
    style: TextStyle(
    fontSize: 30,
    color: Color.fromARGB(255, 224, 124, 9),
    fontWeight: FontWeight.bold
    ),),),
  );
}
}