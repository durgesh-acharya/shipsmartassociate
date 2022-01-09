import 'package:flutter/material.dart';
import 'package:shipsmart/screens/addconsignor.dart';

class ConsignorScreen extends StatefulWidget {
  const ConsignorScreen({ Key? key }) : super(key: key);

  @override
  _ConsignorScreenState createState() => _ConsignorScreenState();
}

class _ConsignorScreenState extends State<ConsignorScreen> {
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
                  builder: (BuildContext context) => AddConsignor()));
              },
              child: Row(
                children: [
                  Icon(Icons.add,color: Colors.white,),
                  Text("Add Consignor")
                ],
              ),
            ),
          )
        ],
      ),
      body: Center(child: Text("Loading...."),),
    );
  }
}