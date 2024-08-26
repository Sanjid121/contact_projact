import 'package:flutter/material.dart';
import 'package:flutter_contact_projact/modal/usar_modal.dart';

// ignore: must_be_immutable
class ContactPage extends StatelessWidget {
  UsarModal contacts;
  ContactPage({Key? key, required this.contacts}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //app bar
      appBar: AppBar(
        title: Text('${contacts.name}'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        //icon and icon button
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios_outlined)),
        actions: [
          Icon(
            Icons.more_vert,
            color: Colors.black,
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: Center(
        child: 
        
        Column(
          // image name numbear
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           Container(
             height: 200,
             width: 220,
          
             child: Image.network('${contacts.image}'
             ),
             
           ),
           SizedBox(height: 10,
          ),
           Text('${contacts.name}',
           style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold
           ),
           ),
          Text('${contacts.number}',)

          
         
        
          ],
        ),
      ),
    );
  }
}
