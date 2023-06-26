//all recently posted items
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'entry_page.dart';

class SellerItemsList extends StatefulWidget{
  const SellerItemsList({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _SellerItemsListState();

}

class _SellerItemsListState extends State<SellerItemsList> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recently Posted Items'),
      ),
      body: Center(
        child: Expanded(
          child: ListView(
            padding: const EdgeInsets.all(8),
            children: <Widget>[
              Container(
                height: 50,
                color: Colors.amber[600],
                child: TextButton(onPressed: (){Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const EntryPage(title: 'Entry A'))
                );}, child: const Text('Entry A', style: TextStyle(color: Colors.black),), ),
              ),
              Container(
                height: 50,
                color: Colors.amber[500],
                child: TextButton(onPressed: (){Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const EntryPage(title: 'Entry B'))
                );}, child: const Text('Entry B', style: TextStyle(color: Colors.black),), ),
              ),
              Container(
                height: 50,
                color: Colors.amber[100],
                child: TextButton(onPressed: (){Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const EntryPage(title: 'Entry C'))
                );}, child: const Text('Entry C', style: TextStyle(color: Colors.black),), ),
              ),
              Container(
                height: 50,
                color: Colors.amber[50],
                child: TextButton(onPressed: (){Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const EntryPage(title: 'Entry D'))
                );}, child: const Text('Entry D', style: TextStyle(color: Colors.black),), ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
