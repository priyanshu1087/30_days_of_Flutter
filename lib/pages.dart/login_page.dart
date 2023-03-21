import 'package:flutter/material.dart';
import 'package:flutter_application_2/utils/routes.dart';
class LoginPage extends StatefulWidget{
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = " ";
  
  bool changedButton = false;
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
        Text("Wellcome $name",style: TextStyle(fontSize: 27,fontWeight:FontWeight.bold ),),
        SizedBox(height: 20.0,),
       Padding(
         padding: const EdgeInsets.symmetric(vertical:18.0, horizontal: 34.0),
         child: Column(
          children: [
             TextFormField(
            decoration: InputDecoration(
              hintText: "Enter username",
              labelText: "Username",
            // OnChanged : ((value) {
             // name= value;
            //  setState(() {});
           // },
          ),
          ),
            TextFormField (
              obscureText: true,
            decoration: InputDecoration(
              hintText: "Enter password",
              labelText: "Password",
             ),
          ),
          SizedBox(
          height: 40.0, 
        ),
          InkWell(
          onTap: () async{
            setState(() {
              changedButton = true;
            });
            await Future.delayed(Duration(seconds:1 ));
            Navigator.pushNamed(context, MyRoutes.homeRoute);
          },
          child: AnimatedContainer(
            duration: Duration(seconds: 1),
            width: changedButton ? 50 : 150,
            height: 50,
           
            alignment: Alignment.center,
            child: changedButton? Icon(Icons.done, color : Colors.white,) :Text("Login",style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold, fontSize:19)),
            decoration: BoxDecoration(
             color: Color.fromARGB(255, 255, 132, 0),
             
             borderRadius: BorderRadius.circular(changedButton ? 50:8),
            ),
          ),
        )
       // ElevatedButton(
         // child: Text("Login"),
        //style: TextButton.styleFrom(minimumSize: Size(150, 50)),
        //onPressed: () {
         // Navigator.pushNamed(context, MyRoutes.homeRoute);
       // },
        
      ],
         ),
       ) 
      ]
      ),
    ), 
  );
}
}
