import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/seller_offer_screen.dart';

class SellerOfferList extends StatefulWidget{
  const SellerOfferList({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _SellerOfferListState();

}

class _SellerOfferListState extends State<SellerOfferList>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text('Offers'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(8),
              children: <Widget>[
                Container(
                  height: 50,
                  color: Colors.amber[600],
                  child: TextButton(onPressed: (){Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SellerOfferScreen(title: 'Offer A'))
                  );}, child: const Text('Offer A', style: TextStyle(color: Colors.black),), ),
                ),
                Container(
                  height: 50,
                  color: Colors.amber[500],
                  child: TextButton(onPressed: (){Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SellerOfferScreen(title: 'Offer B'))
                  );}, child: const Text('Offer B', style: TextStyle(color: Colors.black),), ),
                ),
                Container(
                  height: 50,
                  color: Colors.amber[500],
                  child: TextButton(onPressed: (){Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SellerOfferScreen(title: 'Offer C'))
                  );}, child: const Text('Offer C', style: TextStyle(color: Colors.black),), ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

}