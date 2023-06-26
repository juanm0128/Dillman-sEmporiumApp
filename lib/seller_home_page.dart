import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/entry_page.dart';
import 'package:untitled1/main.dart';
import 'package:untitled1/seller_items_list.dart';
import 'package:untitled1/seller_offer_list.dart';
import 'package:untitled1/seller_offer_screen.dart';
import 'package:untitled1/seller_sign_up.dart';

import 'buyer_items_list.dart';

class SellerHomePage extends StatefulWidget{
  const SellerHomePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _SellerHomePageState();

}

class _SellerHomePageState extends State<SellerHomePage>{
  List<String> wishlist = [];
  String result = "";
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 20, fontWeight: FontWeight.w600);


  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    final List<Widget> _widgetOptions = <Widget>[
      Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(18.0, 10.0, 0.0, 0.0),
            child: Row(
              children: [
                const Text(
                  'Recently Posted Items',
                  style: optionStyle,
                ),
                IconButton(onPressed: (){Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SellerItemsList())
                );}, icon: const Icon(Icons.arrow_forward_ios_outlined))
              ],
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
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(18.0, 10.0, 0.0, 0.0),
            child: Row(
              children: [
                const Text(
                  'Your Offers',
                  style: optionStyle,
                ),
                IconButton(onPressed: (){Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SellerOfferList())
                );}, icon: const Icon(Icons.arrow_forward_ios_outlined))
              ],
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
              ],
            ),
          ),
        ],
      ),
      Column(
        children: const [
          Padding(
            padding: EdgeInsets.fromLTRB(40.0, 10.0, 40.0, 20.0),
            child: TextField(
              decoration: InputDecoration(
                  hintText: 'Search for an item'
              ),
            ),
          ),
        ],
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dillmans Emporium of Antiquities'),
        leading: IconButton(
          onPressed: (){Navigator.push(context,
              MaterialPageRoute(builder: (context) => const MyHomePage(title: 'Dillmans Emporium of Antiquities'))
          );}, icon: const Icon(Icons.person),
        ),
        actions: [
          IconButton(
            onPressed: (){}, icon: const Icon(Icons.message),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search_sharp), label: 'Search'),
          //BottomNavigationBarItem(icon: Icon(Icons.search_sharp), title: Text('Search'))
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
    );
  }
}
