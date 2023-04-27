import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages.dart/ItemWidget.dart';
import 'package:flutter_application_2/pages.dart/drawer.dart';
import 'package:flutter_application_2/models.dart/catalog.dart';

class HomePage extends StatelessWidget{

  @override
  Widget build(BuildContext context){
  final dummylist = List.generate(100, (index)=> CatalogModel.items[0]);
  return Scaffold(
    appBar:AppBar(
      
    title: Text("Shopee"),
    ),
    body: Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView.builder(
        itemCount: dummylist.length,
        itemBuilder: (context, index) {
          return ItemWidget(item:dummylist[index],);
        },
      ),
    ),
       drawer: Mydrawer(),
  );
}
}