import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'offer_screen.dart';

class BuyerOfferScreen extends StatefulWidget{
  const BuyerOfferScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _BuyerOfferScreenState();

}

class _BuyerOfferScreenState extends State<BuyerOfferScreen>{
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
                      MaterialPageRoute(builder: (context) => const OfferScreen(title: 'Offer A'))
                  );}, child: const Text('Offer A', style: TextStyle(color: Colors.black),), ),
                ),
                Container(
                  height: 50,
                  color: Colors.amber[500],
                  child: TextButton(onPressed: (){Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const OfferScreen(title: 'Offer B'))
                  );}, child: const Text('Offer B', style: TextStyle(color: Colors.black),), ),
                ),
                Container(
                  height: 50,
                  color: Colors.amber[500],
                  child: TextButton(onPressed: (){Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const OfferScreen(title: 'Offer C'))
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
