// @dart=2.9
import 'dart:convert';


import 'package:flutter/material.dart';
import 'package:shipsmart/model/consignor.dart';
import 'package:shipsmart/screens/addconsignor.dart';
import 'package:http/http.dart' as http;

class ConsignorScreen extends StatefulWidget {
int eventcode;
ConsignorScreen(this.eventcode);

  @override
  _ConsignorScreenState createState() => _ConsignorScreenState();
}

class _ConsignorScreenState extends State<ConsignorScreen> {
    int associate = 1;
    String _title = "";
    
    Future getConsignor()async{
      
      var response = await http.get(Uri.parse("http://shipsmart-env.eba-4nc5kenf.us-east-2.elasticbeanstalk.com/consignor/byassociate/${associate}"));
     var jsondata = jsonDecode(response.body);
    
      if(jsondata[0]["status"] == true){
        var jdata = jsondata[0]["data"];
        print(jdata);
        return jdata.map((json) => Consignor.fromJson(json)).toList();
      
      }
    } 
  settitle(ecode){
    if(ecode == 1){
      setState(() {
        _title = "Select Consignor";
      });
    }
  }
    @override
  void initState() {
    // TODO: implement initState
    super.initState();
   getConsignor();
   settitle(widget.eventcode);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title,style: TextStyle(fontSize: 12.0),),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right :18.0),
            child: GestureDetector(
              onTap: (){
                     Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => AddConsignor(0)));
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
      body: Center(child:
          FutureBuilder(
            future: getConsignor(),
            builder: (BuildContext context,AsyncSnapshot snapshot){
              if(!snapshot.hasData){
                return Text("No Consignor to show");
              }
              return ListView.builder(
                itemCount: snapshot.data.length == 0 ? 0 : snapshot.data.length,
                itemBuilder: (context,int index){    
                  return Card(
                    
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              
                              Text(snapshot.data[index].consignorname,style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold,color: Colors.blue)),
                              Padding(
                                padding: const EdgeInsets.only(left :8.0),
                                child: Text("(${snapshot.data[index].consignorid})"),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Address : ${snapshot.data[index].consignoraddress}"),
                          ),
                          Text("Pincode : ${snapshot.data[index].consignorpincode}"),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Mobile : ${snapshot.data[index].consignormob}"),
                          )
                        ],
                      ),
                    ),
                  );
                });
            },
          ),
         
      ),);
    
  }
}