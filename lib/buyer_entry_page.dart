import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BuyerEntryPage extends StatefulWidget{
  const BuyerEntryPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<StatefulWidget> createState() => _BuyerEntryPageState();

}

class _BuyerEntryPageState extends State<BuyerEntryPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Padding(
              padding: EdgeInsets.fromLTRB(8.0, 40.0, 8.0, 6.0),
              child: Image(
                image: AssetImage('images/img.png'),
                height: 100,
                width: 1000,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(40.0, 10.0, 40.0, 20.0),
              child: Text('Item: '),
            ),
            Padding(
                padding: EdgeInsets.fromLTRB(40.0, 10.0, 40.0, 20.0),
                child: Text('Price point: ')
            ),
            Padding(
                padding: EdgeInsets.fromLTRB(40.0, 10.0, 40.0, 20.0),
                child: Text('Size: ')
            ),
            Padding(
                padding: EdgeInsets.fromLTRB(40.0, 10.0, 40.0, 20.0),
                child: Text('Condition: ')
            ),


          ],
        ),
      ),
    );
  }
}