import 'package:flutter/material.dart';


class HomePage extends StatelessWidget{

  @override
  Widget build(BuildContext context){
  return Scaffold(
    appBar:AppBar(
    title: Text("Vag bokachoda bal"),
    ),
    body: Center(
      child:Container(
        child:Text("It is my day 2 project :) Please give your feedback..... "),
        ),
       ),
       drawer: Drawer(),
  );
}
}