import 'dart:convert';

import 'package:http/http.dart' as http;
class Crud{

//consignor method

//add new consignor
Future createConsignor(String name,String address, String pincode, String mobilenumber, String email, String gst)async{
Map consignormap = {
'coo':1,
'associate':1,
'name' : name,
'address' : address,
'pincode' : pincode,
'mobile' : mobilenumber,
'email' : email,
'gst' : gst,
'active':1,
'password' : '123455'
};

final String url = "http://shipsmart-env.eba-4nc5kenf.us-east-2.elasticbeanstalk.com/consignor/create";

var response = await http.post(Uri.parse(url),
  headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(consignormap) 
);


if (response.statusCode == 200){
  print("true");
  var jsonresponse = jsonDecode(response.body);
  var id = jsonresponse['id'];
  print(response.body);
  print(jsonresponse);
  print(id);
}else{
  print(response.body);
}

}


}