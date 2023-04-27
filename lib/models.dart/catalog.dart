import 'package:flutter/material.dart';
class CatalogModel {
static final items=[
    Item(
      id: 1,
      name: "iphone 13",
      desc: "Item 1 desc",
      price: 79999,
      color: "red",
      image: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.grover.com%2Fat-en-en%2Fproducts%2Fapple-smartphone-iphone-14-pro-max-6gb-128gb&psig=AOvVaw3YfY4Lf2C2zwuV1WqFmbai&ust=1682623830610000&source=images&cd=vfe&ved=0CBEQjRxqFwoTCIDyiqekyP4CFQAAAAAdAAAAABAI"
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