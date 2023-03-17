import 'package:flutter/material.dart';


class HomePage extends StatelessWidget{

  @override
  Widget build(BuildContext context){
  return Scaffold(
    appBar:AppBar(
    title: Text("Wellcome to Priyanshu's app"),
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