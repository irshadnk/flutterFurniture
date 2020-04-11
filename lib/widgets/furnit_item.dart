import 'package:flutter/material.dart';

class FurnitureItem extends StatelessWidget {
  final String title;
  final String imageUrl;
  final double price;
  final String company;
  final String brand;
  final String description;

  FurnitureItem({
    @required this.title,
    @required this.imageUrl,
    @required this.price,
    @required this.company,
    @required this.brand,
    @required this.description,
  });

  void selectFurniture() {}
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: selectFurniture,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            15,
          ),
        ),
        elevation: 4,
        margin: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.network(
                    imageUrl,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 20,
                  right: 0,
                  child: Container(
                    width: 220,
                    color: Colors.black54,
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                    child: Text(
                      title,
                      style: TextStyle(
                        fontSize: 26,
                        color: Colors.white,
                      ),
                      softWrap: true,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
