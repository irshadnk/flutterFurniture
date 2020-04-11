import 'package:flutter/material.dart';
import './furnit_detail.dart';

class FurnitureItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  final double price;
  final String company;
  final String brand;
  final String description;

  FurnitureItem({
    @required this.id,
    @required this.title,
    @required this.imageUrl,
    @required this.price,
    @required this.company,
    @required this.brand,
    @required this.description,
  });

  void selectFurniture(BuildContext ctx, String id) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return FurnitureDetail(id);
    }));
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectFurniture(context,id),
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
                    width: 300,
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
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.attach_money,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text('${price} Rupees'),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.info,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text('${company}'),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.branding_watermark,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text('${brand}'),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
