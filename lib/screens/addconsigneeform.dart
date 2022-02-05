// @dart=2.9


import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AddConsigneeForm extends StatefulWidget {
  int eventcode;
  int consignorcode;
  int tocoocode;
  AddConsigneeForm(this.eventcode,this.consignorcode,this.tocoocode);

  @override
  _AddConsigneeFormState createState() => _AddConsigneeFormState();
}

class _AddConsigneeFormState extends State<AddConsigneeForm> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}