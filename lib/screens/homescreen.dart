import 'package:flutter/material.dart';
import 'package:shipsmart/screens/consignorscreen.dart';
import 'package:shipsmart/screens/docket.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         leading: Icon(Icons.menu),
  title: Text('Associate id : 207001'),
  actions: [
     Padding(
      padding: const EdgeInsets.only(right :18.0),
      child: Icon(Icons.more_vert),
    ),
  ],
      ),
      body: Column(
       
        children: [
         
          SizedBox(height: 65.0,),

          Center(
            child: GestureDetector(
              onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => ConsignorScreen(0)));
              },
              child: Container(
                width: 120.0,
                height: 40.0,
                color: Colors.blue,
                child: Text("Consignor",style: TextStyle(color: Colors.white),),
              ),
            ),
          ),
          SizedBox(height: 15.0,),
          Center(
            child: GestureDetector(
              onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => Docket()));
              },
              child: Container(
                width: 120.0,
                height: 40.0,
                color: Colors.blue,
                child: Text("Docket",style: TextStyle(color: Colors.white),),
              ),
            ),
          )

        ],
      ),
    );
  }
}