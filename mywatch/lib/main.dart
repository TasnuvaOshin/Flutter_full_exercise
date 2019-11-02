import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Watch',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Firstpage(),
    );
  }
}

class Firstpage extends StatefulWidget {
  @override
  _FirstpageState createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> with TickerProviderStateMixin{

TabController tabController;

      @override
      void initState(){

        tabController = TabController(
          length: 2,
          vsync: this,
        );

        super.initState();
      }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

        title: Text(
          "Home"
        ),
         bottom: TabBar(

          tabs: <Widget>[

          Text("Time"),
          Text("Stop watch"),

          ],
          controller: tabController,
       ),
        backgroundColor: Colors.deepPurpleAccent,
      ),
    
    body: TabBarView(

      children: <Widget>[


          Text("Time"),
          Text("Stop watch"),


      ],
    controller: tabController,
    ),
    
    );
  }
}


