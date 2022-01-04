import 'package:flutter/material.dart';
import 'package:shipsmart/screens/homescreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({ Key? key }) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _loginid = TextEditingController();
   TextEditingController _password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
      children: [
        SizedBox(height: 85.0,),

        // login id
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
      height: 50,
      decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              offset: const Offset(12, 26),
              blurRadius: 50,
              spreadRadius: 0,
              color: Colors.grey.withOpacity(.1)),
      ]),
      child: TextField(
          autofocus: true,
          controller: _loginid,
          maxLength: 8,
          onChanged: (value) {
            //Do something wi
          },
          keyboardType: TextInputType.number,
          style: const TextStyle(fontSize: 14, color: Colors.black),
          decoration: InputDecoration(
            filled: true,
            hintText: 'Login Id',
            hintStyle: TextStyle(color: Colors.grey.withOpacity(.75)),
            fillColor:Colors.transparent,
            contentPadding:
                const EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
            border:  UnderlineInputBorder(
               borderSide: BorderSide(color: Color(0xff4338CA), width: 2.0),
            ),
            focusedBorder:  UnderlineInputBorder(
               borderSide: BorderSide(color: Color(0xff4338CA), width: 2.0),
            ),
            errorBorder:  const UnderlineInputBorder(
               borderSide: BorderSide(color: Colors.red, width: 2.0),
            ),
            enabledBorder:  UnderlineInputBorder(
               borderSide: BorderSide(color: Color(0xff4338CA), width: 2.0),
            ),
          ),
      ),
          ),
        ),
        SizedBox(height: 25.0,),
        // password

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
      height: 50,
      decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              offset: const Offset(12, 26),
              blurRadius: 50,
              spreadRadius: 0,
              color: Colors.grey.withOpacity(.1)),
      ]),
      child: TextField(
          obscureText: true,
          controller: _password,
          maxLength: 12,
          onChanged: (value) {
            //Do something wi
          },
          keyboardType: TextInputType.text,
          style: const TextStyle(fontSize: 14, color: Colors.black),
          decoration: InputDecoration(
            filled: true,
            hintText: 'Password',
            hintStyle: TextStyle(color: Colors.grey.withOpacity(.75)),
            fillColor:Colors.transparent,
            contentPadding:
                const EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
            border:  UnderlineInputBorder(
               borderSide: BorderSide(color: Color(0xff4338CA), width: 2.0),
            ),
            focusedBorder:  UnderlineInputBorder(
               borderSide: BorderSide(color: Color(0xff4338CA), width: 2.0),
            ),
            errorBorder:  const UnderlineInputBorder(
               borderSide: BorderSide(color: Colors.red, width: 2.0),
            ),
            enabledBorder:  UnderlineInputBorder(
               borderSide: BorderSide(color: Color(0xff4338CA), width: 2.0),
            ),
          ),
      ),
          ),
        ),
      SizedBox(height: 25.0,),
        // login button
        Padding(
          padding: const EdgeInsets.all(8.0),
            child: OutlinedButton(
      style: ButtonStyle(
              elevation: MaterialStateProperty.all(0),
              alignment: Alignment.center,
              side: MaterialStateProperty.all(
                  const BorderSide(width: 1, color: Color(0xff4338CA))),
              padding: MaterialStateProperty.all(const EdgeInsets.only(
                  right: 75, left: 75, top: 12.5, bottom: 12.5)),
              backgroundColor: MaterialStateProperty.all(Colors.transparent),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0)))),
      onPressed: (){
        Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (BuildContext context) => HomeScreen()));
      },
      child: Text(
            "Login",
            style: const TextStyle(color: Color(0xff4338CA), fontSize: 16),
      ),
    ),
          ),

          
        // forget password button
          TextButton(onPressed: (){}, child: Text("Forget Password ?"))
        
      ],
      ),
    );
  }
}