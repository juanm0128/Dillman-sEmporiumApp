import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SellerOfferScreen extends StatefulWidget{
  const SellerOfferScreen({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<StatefulWidget> createState() => _SellerOfferScreenState();

}

class _SellerOfferScreenState extends State<SellerOfferScreen>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(8.0, 40.0, 8.0, 6.0),
              child: Image(
                image: AssetImage('images/img.png'),
                height: 100,
                width: 1000,
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(40.0, 10.0, 40.0, 20.0),
              child: Text('Item: '),
            ),
            const Padding(
                padding: EdgeInsets.fromLTRB(40.0, 10.0, 40.0, 20.0),
                child: Text('Size: ')
            ),
            const Padding(
                padding: EdgeInsets.fromLTRB(40.0, 10.0, 40.0, 20.0),
                child: Text('Condition: ')
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(110.0, 8.0, 8.0, 8.0 ),
              child: SizedBox(
                  width: 200,
                  child: FloatingActionButton(
                    onPressed: (){},
                    child: const Text('EDIT'),
                    shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(90))),
                  )
              ),
            ),
          ],
        ),
      ),
    );
  }

}