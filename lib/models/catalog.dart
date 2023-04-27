import 'package:flutter/material.dart';
class Item{
    final String id;
    final String name;
    final String desc;
    final num  price;
    final String color;
    final String image;

  Item({required this.id, required this.name, required this.desc, required this.price, required this.color, required this.image});
  final products=[
    Item(
      id: "items01",
      name: "iphone 13",
      desc: "Item 1 desc",
      price:    79999,
      color: "red",
      image: "image01"
    )
  ];
}