// @dart=2.9
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shipsmart/model/consigee.dart';

class ConsigneeScreen extends StatefulWidget {
int eventcode;
int consignorcode;
ConsigneeScreen(this.eventcode,this.consignorcode);

  @override
  _ConsigneeScreenState createState() => _ConsigneeScreenState();
}

class _ConsigneeScreenState extends State<ConsigneeScreen> {

  Future getConsignee()async{
      
      var response = await http.get(Uri.parse("http://shipsmart-env.eba-4nc5kenf.us-east-2.elasticbeanstalk.com/consignee/byconsignor/${widget.consignorcode}"));
     var jsondata = jsonDecode(response.body);
    
      if(jsondata[0]["status"] == true){
        var jdata = jsondata[0]["data"];
        print(jdata);
        return jdata.map((json) => Consignee.fromJson(json)).toList();
      
      }
    } 


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Consignee..."),),
    );
  }
}