import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages.dart/drawer.dart';

class HomePage extends StatelessWidget{

  @override
  Widget build(BuildContext context){
  return Scaffold(
    appBar:AppBar(
    title: Text("Shopee"),
    ),
    body: Center(
      child:Container(
        child:Text("Wellcome to Shopee "),
        ),
       ),
       drawer: Mydrawer(),
  );
}
}