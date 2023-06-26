import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'buyer_entry_page.dart';

class BuyersItemList extends StatefulWidget{
  const BuyersItemList({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState()  => _BuyersItemListState();

}

class _BuyersItemListState extends State<BuyersItemList>{
  static const TextStyle optionStyle =
  TextStyle(fontSize: 20, fontWeight: FontWeight.w600);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dillmans Emporium of Antiquities'),
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(0.0, 18.0, 0.0, 0.0),
            child: Text(
              'Previously Posted Items',
              style: optionStyle,
            ),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(8),
              children: <Widget>[
                Container(
                  height: 50,
                  color: Colors.amber[600],
                  child: TextButton(onPressed: (){Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const BuyerEntryPage(title: 'Entry A'))
                  );}, child: const Text('Entry A', style: TextStyle(color: Colors.black),), ),
                ),
                Container(
                  height: 50,
                  color: Colors.amber[500],
                  child: TextButton(onPressed: (){Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const BuyerEntryPage(title: 'Entry B'))
                  );}, child: const Text('Entry B', style: TextStyle(color: Colors.black),), ),
                ),
                Container(
                  height: 50,
                  color: Colors.amber[100],
                  child: TextButton(onPressed: (){Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const BuyerEntryPage(title: 'Entry C'))
                  );}, child: const Text('Entry C', style: TextStyle(color: Colors.black),), ),
                ),
                Container(
                  height: 50,
                  color: Colors.amber[50],
                  child: TextButton(onPressed: (){Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const BuyerEntryPage(title: 'Entry D'))
                  );}, child: const Text('Entry D', style: TextStyle(color: Colors.black),), ),
                ),
                Container(
                  height: 50,
                  color: Colors.amber[0],
                  child: TextButton(onPressed: (){Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const BuyerEntryPage(title: 'Entry E'))
                  );}, child: const Text('Entry E', style: TextStyle(color: Colors.black),), ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}