


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/buyer_home_page.dart';

import 'main.dart';

class BuyerSignUp extends StatefulWidget {
  const BuyerSignUp({Key? key}) : super(key: key);

  @override
  State<BuyerSignUp> createState() => _BuyerSignUpState();
}

class _BuyerSignUpState extends State<BuyerSignUp> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text('Buyer Sign Up'),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.fromLTRB(40.0, 10.0, 40.0, 20.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Name'
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(40.0, 10.0, 40.0, 20.0),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Email'
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(40.0, 10.0, 40.0, 20.0),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Address'
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(40.0, 10.0, 40.0, 20.0),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Username'
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(40.0, 10.0, 40.0, 20.0),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Password'
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(40.0, 10.0, 40.0, 20.0),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Confirm Password'
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: SizedBox(
                width: 300,
                child: FloatingActionButton(
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const BuyerHomePage())
                    );
                  },
                  tooltip: 'Increment',
                  shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(90))),
                  child: const Text(
                    'Enter',
                  ),
                ),
              ),
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}