import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages.dart/ItemWidget.dart';
import 'package:flutter_application_2/pages.dart/drawer.dart';
import 'package:flutter_application_2/models.dart/catalog.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
class HomePage extends StatefulWidget{

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int days =30;
  final String name ="Priyanshu";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }
  loadData()async{
   var catalogJson = await rootBundle.loadBuffer("assets/files/catalog.json");
   var decodeData = jsonDecode(catalogJson as String );
   var productsData = decodeData["products"];
  }
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