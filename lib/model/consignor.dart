// @dart=2.9
// To parse this JSON data, do
//
//     final consignor = consignorFromJson(jsonString);

import 'dart:convert';

Consignor consignorFromJson(String str) => Consignor.fromJson(json.decode(str));

String consignorToJson(Consignor data) => json.encode(data.toJson());

class Consignor {
    Consignor({
         this.consignorid,
         this.consignorcoo,
         this.consignorassociate,
          this.consignorname,
        this.consignoraddress,
        this.consignorpincode,
        this.consignormob,
        this.consignoremail,
        this.consignorgst,
        this.consignoractive,
         this.consignorpassword,
       this.consignordatetime,
    });

    int consignorid;
    int consignorcoo;
    int consignorassociate;
    String consignorname;
    String consignoraddress;
    int consignorpincode;
    String consignormob;
    String consignoremail;
    String consignorgst;
    int consignoractive;
    String consignorpassword;
    String consignordatetime;

    factory Consignor.fromJson(Map<String, dynamic> json) => Consignor(
        consignorid: json["consignorid"] ,
        consignorcoo: json["consignorcoo"],
        consignorassociate: json["consignorassociate"],
        consignorname: json["consignorname"],
        consignoraddress: json["consignoraddress"],
        consignorpincode: json["consignorpincode"],
        consignormob: json["consignormob"],
        consignoremail: json["consignoremail"],
        consignorgst: json["consignorgst"],
        consignoractive: json["consignoractive"],
        consignorpassword: json["consignorpassword"],
        consignordatetime: json["consignordatetime"],
    );

    Map<String, dynamic> toJson() => {
        "consignorid": consignorid,
        "consignorcoo": consignorcoo,
        "consignorassociate": consignorassociate,
        "consignorname": consignorname,
        "consignoraddress": consignoraddress,
        "consignorpincode": consignorpincode,
        "consignormob": consignormob,
        "consignoremail": consignoremail,
        "consignorgst": consignorgst,
        "consignoractive": consignoractive,
        "consignorpassword": consignorpassword,
        "consignordatetime": consignordatetime,
    };
}
