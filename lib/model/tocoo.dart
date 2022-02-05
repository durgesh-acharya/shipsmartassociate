// @dart=2.9
// To parse this JSON data, do
//
//     final tocoo = tocooFromJson(jsonString);

import 'dart:convert';

Tocoo tocooFromJson(String str) => Tocoo.fromJson(json.decode(str));

String tocooToJson(Tocoo data) => json.encode(data.toJson());

class Tocoo {
    Tocoo({
        this.tocooid,
        this.tocooname,
        this.tocoostateid,
    });

    int tocooid;
    String tocooname;
    int tocoostateid;

    factory Tocoo.fromJson(Map<String, dynamic> json) => Tocoo(
        tocooid: json["tocooid"],
        tocooname: json["tocooname"],
        tocoostateid: json["tocoostateid"],
    );

    Map<String, dynamic> toJson() => {
        "tocooid": tocooid,
        "tocooname": tocooname,
        "tocoostateid": tocoostateid,
    };
}
