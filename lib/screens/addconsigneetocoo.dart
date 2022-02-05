// @dart=2.9


import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shipsmart/model/tocoo.dart';

class AddConsigneetocoo extends StatefulWidget {
int eventcode;
int consignorcode;
AddConsigneetocoo(this.eventcode,this.consignorcode);

  @override
  _AddConsigneetocooState createState() => _AddConsigneetocooState();
}

class _AddConsigneetocooState extends State<AddConsigneetocoo> {
  Future gettocoo()async{
    final String url = "http://shipsmart-env.eba-4nc5kenf.us-east-2.elasticbeanstalk.com/tocoo";
    http.Response response = await http.get(Uri.parse(url));
    var jsondata = jsonDecode(response.body);

    return jsondata.map((json)=>Tocoo.fromJson(json)).toList();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Select Location",style: TextStyle(fontSize: 12.0),),
      ),
      body: FutureBuilder(
        future: gettocoo(),
        builder: (BuildContext context, AsyncSnapshot snapshot){
          if(!snapshot.hasData){
            return Center(child: CircularProgressIndicator(),);
          }
          return ListView.builder(
            itemCount: snapshot.data.length == 0 ? 0 : snapshot.data.length,
            itemBuilder: (BuildContext context,int index){
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  color: Colors.blue,
                  child: ListTile(
                    onTap: (){
                      
                    },
                    dense: true,
                    title: Text(snapshot.data[index].tocooname,style: TextStyle(color: Colors.white),),
                  ),
                ),
              );
            });
        },),
    );
  }
}