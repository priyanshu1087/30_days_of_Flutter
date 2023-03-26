import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Mydrawer extends StatelessWidget {
const Mydrawer({super.key});
  
  @override
  Widget build(BuildContext context) {
    final imageUrl = "https://media.licdn.com/dms/image/D4D03AQHpwYcfBzROoQ/profile-displayphoto-shrink_400_400/0/1669445574322?e=1685577600&v=beta&t=Bk-6dkA9cL9k8Du30TYo1UO-hzZRzAl9NQGOYkG_KQY";
    return Drawer(
      child: Container(
        color: Color.fromARGB(255, 245, 172, 46),
        child:ListView(
          padding: EdgeInsets.zero,
          children: [
         DrawerHeader(
          padding:EdgeInsets.zero, 
          child:UserAccountsDrawerHeader(
            
            accountName:Text("Priyanshu Das"),
            accountEmail:Text("priyanshu66662@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(imageUrl),
              ),
             ),
           ),
           
           ListTile(
              leading: Icon(CupertinoIcons.home,
              color: Colors.white,
              ),
              title:Text("Home",
              style: TextStyle(
                color: Colors.white
              ),) ,
            ),
            ListTile(
              leading: Icon(CupertinoIcons.person,
              color: Colors.white,
              ),
              title:Text("Account",
              style: TextStyle(
                color: Colors.white
              ),) ,
            ),
            ListTile(
              leading: Icon(CupertinoIcons.cart,
              color: Colors.white,
              ),
              title:Text("My Oders",
              style: TextStyle(
                color: Colors.white
              ),) ,
            ),
            ListTile(
              leading: Icon(CupertinoIcons.bell,
              color: Colors.white,
              ),
              title:Text("Notifications",
              style: TextStyle(
                color: Colors.white
              ),) ,
            ),
             ListTile(
              leading: Icon(CupertinoIcons.chat_bubble,
              color: Colors.white,
              ),
              title:Text("Support",
              style: TextStyle(
                color: Colors.white
              ),) ,
            ),
           
           
            
          ],
        ),
      ),
    );
  }
}