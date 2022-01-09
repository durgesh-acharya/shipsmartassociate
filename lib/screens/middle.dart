import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shipsmart/screens/loginscreen.dart';

class Middle extends StatefulWidget {
  const Middle({ Key? key }) : super(key: key);

  @override
  _MiddleState createState() => _MiddleState();
}

class _MiddleState extends State<Middle> {

  movetonextscreen(){
    Timer(Duration(seconds : 3), (){
      Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => LoginScreen()));
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    movetonextscreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(child: CircularProgressIndicator(backgroundColor: Colors.blue,),)
    );
  }
}