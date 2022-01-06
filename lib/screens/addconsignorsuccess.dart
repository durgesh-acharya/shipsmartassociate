import 'package:flutter/material.dart';


class AddConsignorSuccess extends StatefulWidget {
  int resultid;
  AddConsignorSuccess(this.resultid);
 

  @override
  _AddConsignorSuccessState createState() => _AddConsignorSuccessState();
}

class _AddConsignorSuccessState extends State<AddConsignorSuccess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child :Text('New Consignor added succesfully wide id no ${widget.resultid}')
      ),
    );
  }
}