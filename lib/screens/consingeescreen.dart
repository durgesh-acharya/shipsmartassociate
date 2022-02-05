// @dart=2.9
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shipsmart/model/consigee.dart';
import 'package:shipsmart/screens/addconsigneetocoo.dart';


class ConsigneeScreen extends StatefulWidget {
int eventcode;
int consignorcode;
int consignorcoo;
ConsigneeScreen(this.eventcode,this.consignorcode,this.consignorcoo);

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
    appBar :AppBar(
        title:   Text(""),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right :18.0),
            child: GestureDetector(
              onTap: (){
                   Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (BuildContext context) => AddConsigneetocoo(widget.eventcode, widget.consignorcode)));
              },
              child: Row(
                children: [
                  Icon(Icons.add,color: Colors.white,),
                  Text("Add Consignee")
                ],
              ),
            ),
          )
        ],
      ),
      body: Center(child: FutureBuilder(
            future: getConsignee(),
            builder: (BuildContext context,AsyncSnapshot snapshot){
              if(!snapshot.hasData){
                return Text("No Consignee to show");
              }
              return ListView.builder(
                itemCount: snapshot.data.length == 0 ? 0 : snapshot.data.length,
                itemBuilder: (context,int index){    
                  return GestureDetector(
                    // onTap: _tapped(widget.eventcode,snapshot.data[index].consignorid),
                    child: Card(
                      
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                
                                Text(snapshot.data[index].consigneename,style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold,color: Colors.blue)),
                                Padding(
                                  padding: const EdgeInsets.only(left :8.0),
                                  child: Text("(${snapshot.data[index].consigneeid})"),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Address : ${snapshot.data[index].consigneeaddress}"),
                            ),
                            Text("Pincode : ${snapshot.data[index].consigneepincode}"),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Mobile : ${snapshot.data[index].consigneemobile}"),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                });
            },
          ),),
    );
  }
}