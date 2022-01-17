// @dart=2.9
import 'package:flutter/material.dart';

import 'package:shipsmart/screens/consignorscreen.dart';

class Docket extends StatefulWidget {
  

  @override
  _DocketState createState() => _DocketState();
}

class _DocketState extends State<Docket> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
           Padding(
            padding: const EdgeInsets.only(right :18.0),
            child: GestureDetector(
              onTap: (){
                     Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => ConsignorScreen(1)));
              },
              child: Row(
                children: [
                  Icon(Icons.add,color: Colors.white,),
                  Text("Add Docket")
                ],
              ),
            ),
          )
        ],
      ),
      body: Center(child:Text("Adding")),
    );
  }
}