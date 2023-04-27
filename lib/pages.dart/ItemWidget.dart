// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../models.dart/catalog.dart';
class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({super.key, required this.item}) : assert(item != null) ;
  @override
  Widget build(BuildContext context) {
    
    return Card(
      child: ListTile(
        onTap: (){
          print("${item.name}");
        },
        leading: Image.network(item.image),
        title:  Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text("\$${item.price}",
        style: TextStyle(
          color:Colors.purple,
          fontWeight: FontWeight.bold,
        ),),
       )
      );
    
  }
}
