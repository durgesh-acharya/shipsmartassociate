import 'package:flutter/material.dart';
import 'package:shipsmart/screens/addconsignor.dart';

class Consignor extends StatefulWidget {
  const Consignor({ Key? key }) : super(key: key);

  @override
  _ConsignorState createState() => _ConsignorState();
}

class _ConsignorState extends State<Consignor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      actions: [
        GestureDetector(
          onTap: (){
           Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (BuildContext context) => AddConsignor()));
          },
          child: Padding(
            padding: const EdgeInsets.only(right:18.0),
            child: Row(
              children: [
                Icon(Icons.add),
                Text("Add Consignor", style: TextStyle(color: Colors.white),)
              ],
            ),
          ),
        )
      ],
      ),
    );
  }
}