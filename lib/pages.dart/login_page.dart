import 'package:flutter/material.dart';
import 'package:flutter_application_2/utils/routes.dart';
class LoginPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
  return Material(
    color: Colors.white,
   child : SingleChildScrollView( 
    child: Column(
      children: [
        Image.asset("assets/images/login.png",fit:BoxFit.cover),
        SizedBox(
          height: 20.0, child:  Text("aa ja saale"),
        ),
        Text("Wellcome",style: TextStyle(fontSize: 27,fontWeight:FontWeight.bold ),),
        SizedBox(height: 20.0,),
       Padding(
         padding: const EdgeInsets.symmetric(vertical:18.0, horizontal: 34.0),
         child: Column(
          children: [
             TextFormField(
            decoration: InputDecoration(
              hintText: "Enter username",
              labelText: "Username",
             ),
          ),
            TextFormField(
              obscureText: true,
            decoration: InputDecoration(
              hintText: "Enter password",
              labelText: "Password",
             ),
          ),
          SizedBox(
          height: 40.0, 
        ),
        ElevatedButton(
          child: Text("Login"),
        style: TextButton.styleFrom(minimumSize: Size(150, 50)),
        onPressed: () {
          Navigator.pushNamed(context, MyRoutes.homeRoute);
        },
        )
      ],
         ),
       ) 
      ]
      ),
    ), 
  );
}

}
