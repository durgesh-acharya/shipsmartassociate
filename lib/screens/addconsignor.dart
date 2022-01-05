import 'package:flutter/material.dart';

class AddConsignor extends StatefulWidget {
  const AddConsignor({ Key? key }) : super(key: key);

  @override
  _AddConsignorState createState() => _AddConsignorState();
}

class _AddConsignorState extends State<AddConsignor> {

  //textediting controlloer

  TextEditingController _name = TextEditingController();
   TextEditingController _address = TextEditingController();
    TextEditingController _pincode = TextEditingController();
     TextEditingController _mobilenumber = TextEditingController();
      TextEditingController _email = TextEditingController();
       TextEditingController _gstin = TextEditingController();

  //error visiblity
  bool _namerror = false;


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
         Icons.check_circle,color: Colors.red,
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
    //  suffixIcon: Icon(
    //    Icons.check_circle,
    //  ),
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
    //  suffixIcon: Icon(
    //    Icons.check_circle,
    //  ),
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
            keyboardType: TextInputType.name,
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
    //  suffixIcon: Icon(
    //    Icons.check_circle,
    //  ),
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
    //  suffixIcon: Icon(
    //    Icons.check_circle,
    //  ),
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
//add button

Padding(
  padding: const EdgeInsets.all(8.0),
  child:   ElevatedButton(
  
    onPressed: () {
  
        // Respond to button press
  
    },
  
    child: Text('Add'),
  
  ),
)
      ],),
    );
  }
}