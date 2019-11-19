import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';

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
int hour = 0;

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
        centerTitle: true,
         bottom: TabBar(

          tabs: <Widget>[

          Text("Timer"),
          Text("Stop watch"),

          ],

          labelStyle: TextStyle(

            fontSize: 15.0,
            fontWeight: FontWeight.bold
          
          ),
          labelPadding: EdgeInsets.only(
           
                  bottom: 20.0,
          ),
          unselectedLabelColor: Colors.white70,
          controller: tabController,
       ),
        backgroundColor: Colors.deepPurpleAccent,
      ),
    
    body: TabBarView(
//changes something new 

      children: <Widget>[
                         //we are calling this widget for showing the timer 
                      timerpage(),
                      Text("Stop watch"),
                                 
                                 
                                       ],
                                     controller: tabController,
                                     ),
                                     
                                     );
                                   }
           
          Widget  timerpage() {
            return Container(
              child: Column(
               children: <Widget>[
                   Expanded(
                      
                     flex: 6,
                     child: Row(

                       children: <Widget>[
                              Column(

            children: <Widget>[
             

            Padding(

              padding: EdgeInsets.only(

                   bottom: 20.5,

              ),
                  child: Text(
                    "HH",
                  ),
                        
            ),

            NumberPicker.integer(


                 initialValue: hour,
                 maxValue: 23,
                 minValue: 0,
                  onChanged: (val){


                    setState(() {
                      hour = val;


                    });
                  },

                  )

            ],

   ),
                  
                  
         Column(

            children: <Widget>[
             

            Padding(

              padding: EdgeInsets.only(

                   bottom: 20.5,

              ),
                  child: Text(
                    "HH",
                  ),
                        
            ),

            NumberPicker.integer(


                 initialValue: hour,
                 maxValue: 23,
                 minValue: 0,
                  onChanged: (val){


                    setState(() {
                      hour = val;


                    });
                  },

                  )

            ],

   ),
   Column(

            children: <Widget>[
             

            Padding(

              padding: EdgeInsets.only(

                   bottom: 20.5,

              ),
                  child: Text(
                    "HH",
                  ),
                        
            ),

            NumberPicker.integer(


                 initialValue: hour,
                 maxValue: 23,
                 minValue: 0,
                  onChanged: (val){


                    setState(() {
                      hour = val;


                    });
                  },

                  )

            ],

   ),         
                  
                  
                  
                  
                  
                  
                  
                      ],
                     ),
                   ),

                     Expanded(
                      
                     flex: 1,
                     child: Text(

                       "My Demo Dmeo"
                     ),

                     
                   ),
                     Expanded(
                      
                     flex: 3,
                     child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        
         RaisedButton(

           onPressed: (){},
          child: Text(
            "Run Timer"
          ),
         ),

          RaisedButton(

           onPressed: (){},
          child: Text(
            "Stop Timer"
          ),
         ),
                      ],
                     ),

                      
                   ),



               ],
              ),                     
                     
                  
               
            
               
              


            );
          }
 
   
}


