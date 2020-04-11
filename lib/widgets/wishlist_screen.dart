import 'package:flutter/material.dart';
import '../models/dummy_data.dart';
import './furnit_item.dart';

class WishListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final wishelistItem = DUMMY_ITEM;

    return Scaffold(
      appBar: AppBar(
        title: Text('WishList'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return FurnitureItem(
            id: wishelistItem[index].id,
            title: wishelistItem[index].title,
            imageUrl: wishelistItem[index].imageUrl,
            description: wishelistItem[index].description,
            price: wishelistItem[index].price,
            company: wishelistItem[index].company,
            brand: wishelistItem[index].brand,
          );
        },
        itemCount: wishelistItem.length,
      ),
    );
  }
}
