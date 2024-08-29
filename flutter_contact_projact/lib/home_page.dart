import 'package:flutter/material.dart';
import 'package:flutter_contact_projact/contact_page.dart';
import 'package:flutter_contact_projact/modal/usar_modal.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<UsarModal> contacts = [];
  TextEditingController name = TextEditingController();
  TextEditingController lastname = TextEditingController();
  TextEditingController mobile = TextEditingController();
  usarDatadd() {
    UsarModal contact = UsarModal(
      name: name.text,
      defuldimage: defuldimage,
      number: int.parse(mobile.text),
    );
    setState(() {
      contacts.add(contact);
    });

    name.clear();
    lastname.clear();
    mobile.clear();
  }

  String defuldimage =
      'https://cdn-icons-png.flaticon.com/128/3518/3518775.png';
  Widget useradd() {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF1A3955),
          title: Text(
            'Add Contact',
            style: TextStyle(color: Color(0xFFD36661)),
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back),
            color: Colors.white,
          ),
          actions: [
            IconButton(
              onPressed: () {
                usarDatadd();
                Navigator.pop(context);
              },
              icon: Icon(Icons.check),
              color: Colors.white,
              highlightColor: Colors.white,
              iconSize: 35,
            ),
            SizedBox(width: 20),
          ],
        ),
        body: ListView(children: [
          SizedBox(height: 20),
          Container(
            child: Image.network(
                'https://cdn-icons-png.flaticon.com/128/13434/13434890.png'),
             
                height: 70,
                width: 70,
                
     ),
     SizedBox(height: 25),
     Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          
          controller: name,
          decoration: InputDecoration(
            icon: Icon(Icons.person),
            border: OutlineInputBorder(
               borderRadius: BorderRadius.circular(10),
            ),
            labelText: 'Name',
            hintText: 'Enter Name',
          ),
        ),
      ),
     ),
     
     Container(
child: Padding(
  padding: const EdgeInsets.all(8.0),
  child: TextField(
    controller: lastname,
    decoration: InputDecoration(
      icon: Icon(Icons.person),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      labelText: 'Last Name',
      hintText: 'Enter Last Name',
    ),
  ),
),

     ),

     Container( 
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          controller: mobile,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            icon: Icon(Icons.phone),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            labelText: 'Mobile',
            hintText: 'Enter Mobile Number',
          ),
        ),
      ),
     ),
        ]));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        centerTitle: false,
        title: Text(
          "CONTACTS",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xFF1C3A56),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.black,
                size: 35,
              )),
          SizedBox(width: 5),
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => useradd()));
              },
              icon: Icon(
                Icons.add_ic_call,
                color: Colors.black,
                size: 35,
              )),
          SizedBox(width: 15),
        ],
        leading: Align(
          alignment: AlignmentDirectional.centerEnd,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.network(
                'https://cdn-icons-png.flaticon.com/128/483/483947.png'),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 17),
            child: InkWell(
              onTap: () {
                //   return contact page
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ContactPage(
                              contacts: contacts[index],
                            )));
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 219, 227, 236),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        contacts[index].defuldimage ?? defuldimage),
                  ),
                  title: Text(contacts[index].name!),
                  subtitle: Text(contacts[index].number!.toString()),
                  trailing: Icon(Icons.call),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
