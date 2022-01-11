// @dart=2.9
import 'dart:convert';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:shipsmart/model/consignor.dart';
import 'package:shipsmart/screens/addconsignor.dart';
import 'package:http/http.dart' as http;

class ConsignorScreen extends StatefulWidget {


  @override
  _ConsignorScreenState createState() => _ConsignorScreenState();
}

class _ConsignorScreenState extends State<ConsignorScreen> {
    int associate = 1;
    
    Future<List<Consignor>> getConsignor()async{
      
      var response = await http.get(Uri.parse("http://shipsmart-env.eba-4nc5kenf.us-east-2.elasticbeanstalk.com/consignor/byassociate/${associate}"));
     List jsondata = jsonDecode(response.body);
      var resultdata = jsondata[0]["data"];
      
        return resultdata.map((json) =>Consignor.fromJson(json)).toList();
 
    } 

    @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getConsignor();
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
      body: Center(child: Text("hi"),)
    );
  }
}