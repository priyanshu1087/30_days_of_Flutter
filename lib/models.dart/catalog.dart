import 'package:flutter/material.dart';
class CatalogModel {
static final items=[
    Item(
      id: 1,
      name: "iphone 14",
      desc: "Item 1 desc",
      price: 79999,
      color: "red",
      image: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.pngmart.com%2Fimage%2Ftag%2Fiphone-14-pro-max&psig=AOvVaw2wtqULQ3JkRXo0dBoU7l9m&ust=1682692183214000&source=images&cd=vfe&ved=0CBEQjRxqFwoTCPDQ3veiyv4CFQAAAAAdAAAAABAE"
    )
  ];
}
class Item{
    final int id;
    final String name;
    final String desc;
    final num  price;
    final String color;
    final String image;

  Item({required this.id, required this.name, required this.desc, required this.price, required this.color, required this.image});
  
}