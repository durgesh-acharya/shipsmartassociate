import 'package:flutter/material.dart';
import 'package:shipsmart/model/consignor.dart';
import 'package:shipsmart/screens/consignorscreen.dart';


class AddConsignorSuccess extends StatefulWidget {
  int resultid;
  AddConsignorSuccess(this.resultid);
 

  @override
  _AddConsignorSuccessState createState() => _AddConsignorSuccessState();
}

class _AddConsignorSuccessState extends State<AddConsignorSuccess> {

  bool textvisiblity = false;
  bool indicatorvisiblity = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(milliseconds: 3000),(){
      setState(() {
        textvisiblity = true;
        indicatorvisiblity = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.green,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Visibility(
            visible: indicatorvisiblity,
            child: Center(child: Row(children: [
              CircularProgressIndicator(color: Colors.white,),
              SizedBox(width: 15.0,),
              Text("Fetching Consigner id !!!!")
            ],),)),
          Visibility(
            visible: textvisiblity,
            child: Center(
              child :Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('New Consignor added succesfully wide id no ${widget.resultid}.',style: TextStyle(color: Colors.white,fontSize: 20.0,),),
              )
            ),
          ),
          Visibility(
            visible: textvisiblity,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: OutlinedButton(
                
            onPressed: () {
                // Respond to button press
                Future.delayed(Duration(milliseconds: 1000),(){
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (BuildContext context) => ConsignorScreen()));
                });
            },
            child: Text("Okay",style: TextStyle(color: Colors.white),
          ),
            )),
          )
        ],
      ),
    );
  }
}