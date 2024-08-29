import 'package:flutter/material.dart';

class Nevbear extends StatefulWidget {
  const Nevbear({ Key? key }) : super(key: key);

  @override
  _NevbearState createState() => _NevbearState();
}

class _NevbearState extends State<Nevbear> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Sanjid',style:TextStyle(fontStyle: FontStyle.italic) ,)
            ,
            accountEmail: Text("gamarsanjid@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage("https://cdn-icons-png.flaticon.com/128/3518/3518775.png"),
            ),
            decoration: BoxDecoration(
             image: DecorationImage(image:NetworkImage('https://images.pexels.com/photos/113850/pexels-photo-113850.jpeg?auto=compress&cs=tinysrgb&w=400'), fit:BoxFit.cover)
            
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Profile'),
            onTap: () {},
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Logout'),
            onTap: () {},
          ),
        ]
      ),
    );
  }
}