import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shipsmart/model/consignor.dart';
import 'package:shipsmart/screens/addconsignor.dart';
import 'package:http/http.dart' as http;

class ConsignorScreen extends StatefulWidget {
  const ConsignorScreen({ Key? key }) : super(key: key);

  @override
  _ConsignorScreenState createState() => _ConsignorScreenState();
}

class _ConsignorScreenState extends State<ConsignorScreen> {
    int associate = 1;
    
    Future<Consignor?> getConsignor()async{
      
      var response = await http.get(Uri.parse("http://shipsmart-env.eba-4nc5kenf.us-east-2.elasticbeanstalk.com/consignor/byassociate/${associate}"));
      var jsonresponse = jsonDecode(response.body);

      if(response.statusCode == 200){
        return Consignor.fromJson((jsonresponse));
      }
     
    }

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