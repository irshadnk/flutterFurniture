import 'package:flutter/material.dart';

import '../models/dummy_data.dart';

class FurnitureDetail extends StatelessWidget {
  final String id;
  FurnitureDetail(this.id);
  //static const routeName = '/furnit-detail';
  @override
  Widget build(BuildContext context) {
     final titleController = TextEditingController();

  final amountController = TextEditingController();
    final selectedFurniture = DUMMY_ITEM.firstWhere((item) => item.id == id);
    return Scaffold(
      appBar: AppBar(
        title: Text('${selectedFurniture.title}'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: 300,
            width: double.infinity,
            child: Image.network(
              selectedFurniture.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'Details',
              style: Theme.of(context).textTheme.title,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(10),
            ),
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            height: 200,
            width: 300,
            /*child: ListView.builder(
              itemBuilder: (ctx, index) => Card(
                color: Theme.of(context).accentColor,
                child: Padding(padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10), child: Text(selectedFurniture.description)),
              ),
              itemCount: 1,
            )*/
            child: Column(children: <Widget>[
              Card(
                color: Theme.of(context).accentColor,
                child: Padding(padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10), child: Text('Price: \$${selectedFurniture.price.toStringAsFixed(2)}')),
              ),
              Card(
                color: Theme.of(context).accentColor,
                child: Padding(padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10), child: Text('Company: ${selectedFurniture.company}')),
              ),
              Card(
                color: Theme.of(context).accentColor,
                child: Padding(padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10), child: Text('Brand Name: ${selectedFurniture.brand}')),
              ),
              Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              controller: titleController,
              onSubmitted: (_) {},
              // onChanged: (value){
              //   titleInput = value;
              // },
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              keyboardType: TextInputType.number,
              controller: amountController,
              onSubmitted: (_) {},
              // onChanged: (value){
              //   amountInput = value;
              // },
            ),
            FlatButton(
              child: Text('Add Transaction'),
              textColor: Colors.purple,
              onPressed: (){},
            ),
          ],
        ),
      ),
    )
            ],),
          )
        ],
      ),
    );
  }
}
