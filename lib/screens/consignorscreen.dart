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
    
    Future<List<Consignor?>> getConsignor()async{
      
      var response = await http.get(Uri.parse("http://shipsmart-env.eba-4nc5kenf.us-east-2.elasticbeanstalk.com/consignor/byassociate/${associate}"));
      var jsonresponse = jsonDecode(response.body);
      var resultdata = jsonresponse['data'];
      print(resultdata);
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
      body: Center(child: FutureBuilder(
        future : getConsignor(),
        builder: (BuildContext context, AsyncSnapshot snapshot){
          if(snapshot.hasData){
            return ListView.builder(
              itemCount: 2,
              itemBuilder: (context,index){
                return Card(
                  child: Column(
                    crossAxisAlignment:CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(snapshot.data[index].consignorname),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(snapshot.data[index].consignoraddress),
                      )
                    ],
                  ),
                );
              });
          }
          return Text("No data");
        }),),
    );
  }
}