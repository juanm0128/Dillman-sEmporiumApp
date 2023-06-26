import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/buyer_items_list.dart';

import 'buyer_entry_page.dart';
import 'buyer_offer_screen.dart';
import 'entry_page.dart';
import 'main.dart';
import 'offer_screen.dart';

class BuyerHomePage extends StatefulWidget{
  const BuyerHomePage({Key? key}) : super(key: key);

  @override
  State<BuyerHomePage> createState() => _BuyerHomePageState();
  
}

class _BuyerHomePageState extends State<BuyerHomePage>{
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
                  'Your Recently Posted Items',
                  style: optionStyle,
                ),
                IconButton(onPressed: (){Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const BuyersItemList())
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
                  child: Center(child: TextButton(onPressed: (){Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const BuyerEntryPage(title: 'Entry A'))
                  );}, child: const Text('Entry A', style: TextStyle(color: Colors.black),), )),
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
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(18.0, 10.0, 0.0, 0.0),
            child: Row(
              children: [
                const Text(
                  'Offers',
                  style: optionStyle,
                ),
                IconButton(onPressed: (){Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const BuyerOfferScreen())
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
              ],
            ),
          )
        ],
      ),
      Column(
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(8.0, 20.0, 8.0, 6.0),
            child: Image(
              image: AssetImage('images/img.png'),
              height: 100,
              width: 1000,
            ),
          ),
          TextButton(child: const Text('Add a photo of the item you are looking for'), onPressed: (){} ),
          const Padding(
            padding: EdgeInsets.fromLTRB(40.0, 10.0, 40.0, 20.0),
            child: TextField(
              decoration: InputDecoration(
                  hintText: 'Type an item you are looking for'
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(40.0, 10.0, 40.0, 20.0),
            child: TextField(
              decoration: InputDecoration(
                  hintText: 'What is your price point?'
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(40.0, 10.0, 40.0, 20.0),
            child: TextField(
              decoration: InputDecoration(
                  hintText: 'What is the desired size for this item?'
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(40.0, 10.0, 40.0, 20.0),
            child: TextField(
              decoration: InputDecoration(
                  hintText: 'What is the desired condition for this item? (i.e. Used, New)'
              ),
            ),
          ),
          SizedBox(
            width: 100,
            child: FloatingActionButton(onPressed: (){}, child: const Text('POST'),
              shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(90))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: TextButton(child: const Text('View all previously posted items'), onPressed: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const BuyersItemList())
              );
            } ),
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
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Add'),
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
