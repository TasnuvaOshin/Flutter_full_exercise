import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp> {
  List<String> _products = ['Food Tester'];

  @override
  build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('My App'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(15.0),
            child: RaisedButton(
              child: Text("Add Products"),
              onPressed: () {

           setState(() {
                 _products.add('Advance Food Taster');
           });
            

              },
            ),
          ),
          Column(
            children: _products
                .map(
                  (element) => Card(
                    child: Column(
                      children: <Widget>[
                        Image.asset('assets/img.jpg'),
                        Text(element)
                      ],
                    ),
                  ),
                )
                .toList(),
          ),
        ],
      ),
    ));
  }
}
