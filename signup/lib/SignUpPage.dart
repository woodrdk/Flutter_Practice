import 'package:flutter/material.dart';
import 'package:signup/HomePage.dart';
 

 class SignUpPage extends StatefulWidget {
  
 
   @override
   _SignUpPageState createState() => _SignUpPageState();
 }
 
 class _SignUpPageState extends State<SignUpPage> {
   GlobalKey<FormState> _key = new GlobalKey();
   bool _autovalidate = false;
   String name, email, mobile, collegeName;
   
   @override
   Widget build(BuildContext context) {
     return Scaffold(
        backgroundColor: Colors.orange,
        appBar: AppBar(
          title: Text('SignUp'),
        ),
        body: Form(
          key: _key,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0)
            ),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10.0),
                ),
                Image(
                  image: AssetImage("images/logo.png"),
                  width: 100.0,
                  height: 100.0,
                ),
                ListTile(
                  leading: Icon(Icons.person),
                  title: TextFormField(
                    validator: (input){
                      if(input.isEmpty){
                        return 'Enter Name';
                      }
                    },
                    decoration: InputDecoration(
                      labelText: 'Name',
                    ),
                    onSaved: (input) => name = input,
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.email),
                  title: TextFormField(
                    validator: (input){
                      if(input.isEmpty){
                        return 'Enter Email';
                      }
                    },
                    decoration: InputDecoration(
                      labelText: 'Email',
                    ),
                    onSaved: (input) => email = input,
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.phone_android),
                  title: TextFormField(
                    validator: (input){
                      if(input.isEmpty){
                        return 'Enter Mobile Phone';
                      }
                    },
                    decoration: InputDecoration(
                      labelText: 'Mobile Phone',
                    ),
                    onSaved: (input) => mobile = input,
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.school),
                  title: TextFormField(
                    validator: (input){
                      if(input.isEmpty){
                        return 'Enter College';
                      }
                    },
                    decoration: InputDecoration(
                      labelText: 'College Name',
                    ),
                    onSaved: (input) => collegeName = input,
                  ),
                ),
                ButtonTheme(
                  height: 40.0,
                  minWidth: 200.0,
                  child: RaisedButton(
                    color: Colors.orange,
                    child: Text(
                      'Save',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)
                    ),
                    onPressed: (){
                      _sendToNextScreen();
                    },
                  ),
                ),
              ],
            ),
          ),
          
        ),
     );
   }

   _sendToNextScreen(){
     if(_key.currentState.validate()){
       // saves to global key
       _key.currentState.save();
       // send to next screen
       Navigator.push(context, 
         MaterialPageRoute(
           builder: (context) => HomePage(
             name: name, mobile: mobile,email: email, collegeName: collegeName
           ),
         ),
       );
     }
     else{
       setState(() {
         _autovalidate = true;
       });
     }
   }
 }