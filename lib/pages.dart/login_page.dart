import 'package:flutter/material.dart';
import 'package:flutter_application_2/utils/routes.dart';
class LoginPage extends StatefulWidget{
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = " ";
  
  bool changedButton = false;
  final _formkey = GlobalKey<FormState>();
  moveToHome(BuildContext context) async {
    setState(() {
                  changedButton = true;
                });
                await Future.delayed(Duration(seconds:1 ));
               await Navigator.pushNamed(context, MyRoutes.homeRoute);
                 setState(() {
                  changedButton = false;
                });
  }
  @override
  Widget build(BuildContext context){
  return Material(
    color: Colors.white,
   child : SingleChildScrollView( 
    child: Form(
      key: _formkey,
      child: Column(
        children: [
          Image.asset("assets/images/login.png",fit:BoxFit.cover),
          SizedBox(
            height: 20.0, child:  Text("................................"),
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
             //  OnChanged : ((value)
              //  name= value;
              //  setState(() {});
            //  },
            ),
            ///: (value){
            ///  if(value.isEmpty){
            ///    return "Please enter user name ";
            ////  }
            //  return null;
           // },
            ),
            
              TextFormField (
                obscureText: true,
              decoration: InputDecoration(
                hintText: "Enter password",
                labelText: "Password",
               ),
              // validator: (value){
              //if(value.isEmpty){
              //  return "Please enter the password ";
            //  }
            //else
             // return null;
          //  },
            ),
            SizedBox(
            height: 40.0, 
          ),
              Material(
                color: Color.fromARGB(255, 255, 106, 0),
                borderRadius: BorderRadius.circular(changedButton ? 50:8),
                
                 
              child: InkWell(
              splashColor: Color.fromARGB(255, 238, 196, 134),
              
              onTap: () => moveToHome(context),
              child: Ink(
               //duration: Duration(seconds: 1),
                width: changedButton ? 50 : 150,
                height: 50,
                 
               
               // Alignment: Alignment.center,
                child: changedButton? Icon(Icons.done, color : Colors.white,) :Text("Login", textAlign:TextAlign.center ,style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold, fontSize:19,)),
               
              ),
                    ),
            )
            ],
           ),
         ) 
        ]
        ),
    ),
    ), 
  );
}
}
