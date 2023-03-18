import 'package:flutter/material.dart';


class LoginPage extends StatelessWidget{

  @override
  Widget build(BuildContext context){
  return Material(
    color: Colors.white,
    child: Column(
      children: [
        Image.asset("assets/images/login.png",fit:BoxFit.cover),
        SizedBox(
          height: 20.0, child:  Text("aa ja saale"),
        ),
        Text("Wellcome",style: TextStyle(fontSize: 25,fontWeight:FontWeight.bold ),),
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
          height: 20.0, 
        ),
        ElevatedButton(child: Text("Login"),
        style: TextButton.styleFrom(),
        onPressed: () {},
        )
      ],
         ),
       ) 
      ]
      ),
   
  );
}

}
