import 'package:flutter/foundation.dart';

class Item {
  final String id;
  final String title;
  final String imageUrl;
  final double price;
  final int quantity;
  final String company;
  final String brand;
  final String material;
  final String color;
  final String size;
  final String description;

  const Item({
    @required this.id,
    @required this.title,
    @required this.imageUrl,
    @required this.price,
    @required this.quantity,
    @required this.company,
    @required this.brand,
    @required this.material,
    @required this.color,
    @required this.size,
    @required this.description,
  });
}
