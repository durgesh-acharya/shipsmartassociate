import 'package:flutter/material.dart';

class AddConsignor extends StatefulWidget {
  const AddConsignor({ Key? key }) : super(key: key);

  @override
  _AddConsignorState createState() => _AddConsignorState();
}

class _AddConsignorState extends State<AddConsignor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(children: [
        SizedBox(height:35.0),

// name text filed

        Padding(
          padding: const EdgeInsets.all(14.0),
          child: TextFormField(
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
    //  suffixIcon: Icon(
    //    Icons.check_circle,
    //  ),
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

      ],),
    );
  }
}