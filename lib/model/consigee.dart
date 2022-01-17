// @dart=2.9
// To parse this JSON data, do
//
//     final consignee = consigneeFromJson(jsonString);

import 'dart:convert';

Consignee consigneeFromJson(String str) => Consignee.fromJson(json.decode(str));

String consigneeToJson(Consignee data) => json.encode(data.toJson());

class Consignee {
    Consignee({
        this.consigneeid,
        this.consigneecoo,
        this.consigneecoid,
        this.consigneename,
        this.consigneeaddress,
        this.consigneepincode,
        this.consigneemobile,
        this.consigneegst,
    });

    int consigneeid;
    int consigneecoo;
    int consigneecoid;
    String consigneename;
    String consigneeaddress;
    int consigneepincode;
    String consigneemobile;
    String consigneegst;

    factory Consignee.fromJson(Map<String, dynamic> json) => Consignee(
        consigneeid: json["consigneeid"],
        consigneecoo: json["consigneecoo"],
        consigneecoid: json["consigneecoid"],
        consigneename: json["consigneename"],
        consigneeaddress: json["consigneeaddress"],
        consigneepincode: json["consigneepincode"],
        consigneemobile: json["consigneemobile"],
        consigneegst: json["consigneegst"],
    );

    Map<String, dynamic> toJson() => {
        "consigneeid": consigneeid,
        "consigneecoo": consigneecoo,
        "consigneecoid": consigneecoid,
        "consigneename": consigneename,
        "consigneeaddress": consigneeaddress,
        "consigneepincode": consigneepincode,
        "consigneemobile": consigneemobile,
        "consigneegst": consigneegst,
    };
}
