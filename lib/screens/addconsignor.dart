import 'package:flutter/material.dart';
import 'package:shipsmart/utility/crud.dart';

class AddConsignor extends StatefulWidget {


  @override
  _AddConsignorState createState() => _AddConsignorState();
}

class _AddConsignorState extends State<AddConsignor> {

  // Crud Class object
   Crud crud = new Crud();

  //textediting controlloer

  TextEditingController _name = TextEditingController();
   TextEditingController _address = TextEditingController();
    TextEditingController _pincode = TextEditingController();
     TextEditingController _mobilenumber = TextEditingController();
      TextEditingController _email = TextEditingController();
       TextEditingController _gstin = TextEditingController();

  //error visiblity
  bool _namerror = false;
  bool _addresserror = false;
  bool _pincodeerror = false;
  bool _mobilenumbererror = false;
  bool _emailerror = false;
  bool _errortext = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          GestureDetector(
            child: Icon(Icons.arrow_back),
            onTap: (){
              Navigator.of(context).pop();
            },
          )
        ],
      ),
      body: ListView(children: [
        SizedBox(height:15.0),

// name text filed

        Padding(
          padding: const EdgeInsets.all(14.0),
          child: TextFormField(
            controller: _name,
            keyboardType: TextInputType.name,
   cursorColor: Theme.of(context).cursorColor,
  //  initialValue: ' Eg.ABC Enterprise',
   maxLength: 35,
   decoration: InputDecoration(
    //  icon: Icon(Icons.favorite),
     labelText: 'Enter Name',
     labelStyle: TextStyle(
       color: Color(0xFF6200EE),
     ),
     helperText: 'Eg.ABC Enterprise',
     suffixIcon: Visibility(
       visible: _namerror,
       child: Icon(
         Icons.error_outlined,color: Colors.red,
       ),
     ),
     enabledBorder: UnderlineInputBorder(
       borderSide: BorderSide(color: Color(0xFF6200EE)),
     ),
   ),
 ),
        ),
//address field

Padding(
          padding: const EdgeInsets.all(14.0),
          child: TextFormField(
            controller: _address,
            keyboardType: TextInputType.name,
   cursorColor: Theme.of(context).cursorColor,
  //  initialValue: ' Eg.ABC Enterprise',
   maxLength: 100,
   decoration: InputDecoration(
    //  icon: Icon(Icons.favorite),
     labelText: 'Enter Address',
     labelStyle: TextStyle(
       color: Color(0xFF6200EE),
     ),
     helperText: 'Eg.Gidc',
     suffixIcon:  Visibility(
       visible: _addresserror,
       child: Icon(
         Icons.error_outlined,color: Colors.red,
       ),
     ),
     enabledBorder: UnderlineInputBorder(
       borderSide: BorderSide(color: Color(0xFF6200EE)),
     ),
   ),
 ),
        ),
// pincode field

Padding(
          padding: const EdgeInsets.all(14.0),
          child: TextFormField(
            controller: _pincode,
            keyboardType: TextInputType.number,
   cursorColor: Theme.of(context).cursorColor,
  //  initialValue: ' Eg.ABC Enterprise',
   maxLength: 6,
   decoration: InputDecoration(
    //  icon: Icon(Icons.favorite),
     labelText: 'Enter Pincode',
     labelStyle: TextStyle(
       color: Color(0xFF6200EE),
     ),
     helperText: 'Eg.360001',
     suffixIcon: Visibility(
       visible: _pincodeerror,
       child: Icon(
         Icons.error_outlined,color: Colors.red,
       ),
     ),
     enabledBorder: UnderlineInputBorder(
       borderSide: BorderSide(color: Color(0xFF6200EE)),
     ),
   ),
 ),
        ),

        //mobile number field

  Padding(
          padding: const EdgeInsets.all(14.0),
          child: TextFormField(
            controller: _mobilenumber,
            keyboardType: TextInputType.number,
   cursorColor: Theme.of(context).cursorColor,
  //  initialValue: ' Eg.ABC Enterprise',
   maxLength: 10,
   decoration: InputDecoration(
    //  icon: Icon(Icons.favorite),
     labelText: 'Enter Mobile Number',
     labelStyle: TextStyle(
       color: Color(0xFF6200EE),
     ),
     helperText: 'Eg.9999999999',
     suffixIcon: Visibility(
       visible: _mobilenumbererror,
       child: Icon(
         Icons.error_outlined,color: Colors.red,
       ),
     ),
     enabledBorder: UnderlineInputBorder(
       borderSide: BorderSide(color: Color(0xFF6200EE)),
     ),
   ),
 ),
        ),
//email field

Padding(
          padding: const EdgeInsets.all(14.0),
          child: TextFormField(
            controller: _email,
            keyboardType: TextInputType.emailAddress,
   cursorColor: Theme.of(context).cursorColor,
  //  initialValue: ' Eg.ABC Enterprise',
   maxLength: 50,
   decoration: InputDecoration(
    //  icon: Icon(Icons.favorite),
     labelText: 'Enter Email',
     labelStyle: TextStyle(
       color: Color(0xFF6200EE),
     ),
     helperText: 'Eg.xyz@abc.com',
     suffixIcon:  Visibility(
       visible: _emailerror,
       child: Icon(
         Icons.error_outlined,color: Colors.red,
       ),
     ),
     enabledBorder: UnderlineInputBorder(
       borderSide: BorderSide(color: Color(0xFF6200EE)),
     ),
   ),
 ),
        ),

    // enter gst

    Padding(
          padding: const EdgeInsets.all(14.0),
          child: TextFormField(
            controller: _gstin,
            keyboardType: TextInputType.text,
   cursorColor: Theme.of(context).cursorColor,
  //  initialValue: ' Eg.ABC Enterprise',
   maxLength: 16,
   decoration: InputDecoration(
    //  icon: Icon(Icons.favorite),
     labelText: 'Enter GSTIN',
     labelStyle: TextStyle(
       color: Color(0xFF6200EE),
     ),
     helperText: 'Eg.2*A*P*B1*9*M1*J',
    //  suffixIcon: Icon(
    //    Icons.check_circle,
    //  ),
     enabledBorder: UnderlineInputBorder(
       borderSide: BorderSide(color: Color(0xFF6200EE)),
     ),
   ),
 ),
        ),
//error text
Padding(
  padding: const EdgeInsets.all(8.0),
  child:   Visibility(
  
    visible: _errortext,
  
    child: Text("Mandatory detils are not filled",style: TextStyle(color: Colors.white,backgroundColor: Colors.red,fontSize: 12.0))),
),
//add button

Padding(
  padding: const EdgeInsets.all(8.0),
  child:   ElevatedButton(
  
    onPressed: () {
      //show name error
  if(_name.text.length == 0){
    setState(() {
      _namerror = true;
    });
  }
  // show address error
  if(_address.text.length == 0){
    setState(() {
      _addresserror = true;
    });
  }
  // show pincode error
  if(_pincode.text.length == 0){
    setState(() {
      _pincodeerror = true;
    });
  }
  //show mobile number error
  if(_mobilenumber.text.length == 0){
    setState(() {
      _mobilenumbererror = true;
    });
  }
  // show email error
 if(_email.text.length == 0){
    setState(() {
      _emailerror = true;
    });
  }
if(_name.text.length == 0 ||_address.text.length == 0 ||_pincode.text.length == 0 || _mobilenumber.text.length == 0 || _email.text.length == 0){
setState(() {
  _errortext = true;
});
}else{
  
  // print("form submitted");
  crud.createConsignor(_name.text,_address.text,_pincode.text,_mobilenumber.text,_email.text, _gstin.text);
}

        // Respond to button press
  
    },
  
    child: Text('Add'),
  
  ),
)
      ],),
    );
  }
}