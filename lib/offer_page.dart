import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/seller_home_page.dart';

class OfferPage extends StatefulWidget{
  const OfferPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _OfferPageState();
  
}

class _OfferPageState extends State<OfferPage>{
  bool hi = false;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: const Text('Offer'),),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(8.0, 40.0, 8.0, 6.0),
            child: Image(
              image: AssetImage('images/img.png'),
              height: 100,
              width: 1000,
            ),
          ),
          TextButton(child: const Text('Add a photo of the item you are looking to sell'), onPressed: (){} ),

          const Padding(
            padding: EdgeInsets.fromLTRB(40.0, 10.0, 40.0, 20.0),
            child: TextField(
              decoration: InputDecoration(
                  hintText: 'What is the size of the item?'
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(40.0, 10.0, 40.0, 20.0),
            child: TextField(
              decoration: InputDecoration(
                  hintText: 'What is the condition for this item? (i.e. Used, New)'
              ),
            ),
          ),
          const Text('Are you willing to pay the price point?'),
          Checkbox(value: hi, onChanged: (bool? newVal) {
            setState(() {
              hi = newVal ?? true;
            });
          },
          ),
          SizedBox(
            width: 200,
            child: FloatingActionButton(onPressed: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SellerHomePage())
              );
            }, child: const Text('SUBMIT OFFER FOR VERIFICATION'),
              shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(90))),
            ),
          ),
        ],
      ),
    );
  }
}