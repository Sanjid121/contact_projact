import 'package:flutter/material.dart';
import 'package:flutter_contact_projact/contact_page.dart';
import 'package:flutter_contact_projact/modal/usar_modal.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<UsarModal> contacts = [
    UsarModal(
name: 'MD ANTOR',
number: 01711111111,
image:'https://scontent.fdac22-1.fna.fbcdn.net/v/t39.30808-6/449337243_1646193632809676_7755820851066647044_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=a5f93a&_nc_eui2=AeHo8LGfWKdwNVl8BM2_UNvylsRjI97g136WxGMj3uDXfpp8_oHq_XB-E4wfiEnAuSGwHIss-VFGz-tqBnIueItK&_nc_ohc=KIOMKzmOg2cQ7kNvgHVMTC7&_nc_ht=scontent.fdac22-1.fna&oh=00_AYBBbCr4hvA8Xt1A9OzsZmbrk46AwbCZOrlnXIByWv5L-A&oe=66D26975' ,

    ),
    UsarModal(
      name: "MD SANJID ",
      image: "https://scontent.fdac22-1.fna.fbcdn.net/v/t39.30808-6/450217375_840921898028078_5695579272335975263_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=6ee11a&_nc_eui2=AeHCym7i9Y1Dk4PE535JaUBeHIX_XndBnW8chf9ed0Gdb_cnmhn0qiNjk4l4e7RnrOsd3XJY7aJxVw-bf7ckOLlY&_nc_ohc=R68FtckbingQ7kNvgFJNF9H&_nc_ht=scontent.fdac22-1.fna&oh=00_AYDHBMzcWfpMZa8hwwfyGHU6EiGX9S7oR1oBOd693--owQ&oe=66D258F9",
       number: 01711111111,
    ),
     UsarModal(
      name: "MD MARIFUL ",
      image: "https://scontent.fdac22-2.fna.fbcdn.net/v/t39.30808-6/449824064_943271020880742_3071278019408398532_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=833d8c&_nc_eui2=AeE7eZAusuSkAhhXsiwPD_bnjc9tLugmxoONz20u6CbGg3GZ0ziYtCKVK1kbbEem8L4uHNxolt9uwh80y-qB6sik&_nc_ohc=m9sNK5q4uRIQ7kNvgGjNl_h&_nc_ht=scontent.fdac22-2.fna&oh=00_AYDhm1lGYdKvxE2KIwERCcS29Rj4e2QmkVQMWiydbIydOw&oe=66D237F8",
       number:   01711111111,
    ),
     UsarModal(
      name: "MD SIFAT ",
      image: "https://scontent.fdac22-2.fna.fbcdn.net/v/t39.30808-6/444502057_2143797162658636_3049412536082424385_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=a5f93a&_nc_eui2=AeE1TbAL1MiDEgqFwW8aIcR4cHJz_2NH3rdwcnP_Y0fet2Ii9Adk8v98hQxEcV1z32_jOIGMzreuGhzXPb4EPThj&_nc_ohc=44zq8EryVm8Q7kNvgFMa2AE&_nc_ht=scontent.fdac22-2.fna&oh=00_AYB8hk08HmeC-xj8Luc8Ax797POVBz0RegolSK0d_bct5w&oe=66D254C9",
       number: 01711111111,
    ),
     UsarModal(
      name: "MD REDWAN ",
      image: "https://scontent.fdac22-1.fna.fbcdn.net/v/t39.30808-6/448819150_488985380248271_7917609328536923845_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=a5f93a&_nc_eui2=AeGApJgkx1YrvsjSut-nignQGyc4HUkAWaYbJzgdSQBZpkL5osU9oFGItwSKzlyCvEQJzm4RiKfFww2ovQlhEygU&_nc_ohc=FLxCprft744Q7kNvgFBrmXR&_nc_ht=scontent.fdac22-1.fna&oh=00_AYDnuHXZ4UCsE7q6CnUUQ3OPR_M1BDVRJGG-LlLr7lTrYA&oe=66D25E24",
       number: 01711111111,
    ),
     UsarModal(
      name: "MD SHABUDDIN ",
      image: "https://scontent.fdac22-1.fna.fbcdn.net/v/t39.30808-6/455884741_537507552039473_4987105314925682069_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=6ee11a&_nc_eui2=AeF0i01CR_g7p9XvZemZfSazvXkGRA9giJC9eQZED2CIkIx8UJw9rrhzAZdIVHaQ_g-_0Fw818WfUiPV58E0rnQW&_nc_ohc=s9SDjr11WvgQ7kNvgF09HG5&_nc_ht=scontent.fdac22-1.fna&oh=00_AYAKPaXX08uhh_WwY2qNiFC9-BOEyqMrBEaL0D1p4r_a6Q&oe=66D2680D",
       number: 01711111111,
    ),
     UsarModal(
      name: "MD SOJIB ",
      image: "https://scontent.fdac22-1.fna.fbcdn.net/v/t39.30808-6/448719479_122144030168047903_4149137624352816973_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=833d8c&_nc_eui2=AeEA2JoMX-UPExaIcsHVO_mVXfD57YediWFd8Pnth52JYZiCjVG33rXAmYFJklIMQeT9xoy4Qd3Dr2nmkAfJE59Y&_nc_ohc=GqLkPbG9XNIQ7kNvgF0tmqq&_nc_ht=scontent.fdac22-1.fna&oh=00_AYDGKQi9SJj_EbEdzX8pttb_X_RyubwRjMdmTSy3YK4WsQ&oe=66D25E60",
       number: 01711111111,
    ),
     UsarModal(
      name: "MD RAMIM ",
      image: "https://scontent.fdac22-1.fna.fbcdn.net/v/t39.30808-6/454604605_880761707433032_5351768707703601967_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=6ee11a&_nc_eui2=AeFcRJpObnaTym9HzvGTyJw_0vEs08KvSqXS8SzTwq9KpaMfCStGdA_5AKuynlExCxcc13_Zui3Qx7Bo4iNBCup5&_nc_ohc=JOqgPOvHnH8Q7kNvgGs3ROY&_nc_ht=scontent.fdac22-1.fna&oh=00_AYB8-ftbqmOy5wvivEIjgi3cpY4ja34XIKER3XpL3vS5Dw&oe=66D251D2",
       number: 01711111111,
    ),
     UsarModal(
      name: "MD EFRAN ",
      image: "https://scontent.fdac22-1.fna.fbcdn.net/v/t39.30808-6/455862357_122106775310465874_2249046844270573633_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=6ee11a&_nc_eui2=AeE-49iJMWQedhVYs6q-ZkRL0NK-DYOhm4LQ0r4Ng6Gbgm_hQChU98mg5Ubp_wwnA3n_r3wcUT3L8URjkzu89Lh1&_nc_ohc=qwH6g934rgAQ7kNvgFBMF9E&_nc_ht=scontent.fdac22-1.fna&oh=00_AYDKa7X2RojXVzvzPXoqLtV-tKKlwZjs2w0Z5By23a1NQA&oe=66D24693",
       number: 01711111111 ,
    ),
     UsarModal(
      name: "MD AKIB ",
      image: "https://scontent.fdac22-1.fna.fbcdn.net/v/t39.30808-6/449400754_801731965434062_3864665190414937061_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=6ee11a&_nc_eui2=AeGxlfGVRJ8IZUvwq2Ru6gX05fcpxbTanfrl9ynFtNqd-qI6Ge8-6_GdT8Jg_jubuxazzElxns-8CpnjlN94VOMv&_nc_ohc=pKUG82S_SX0Q7kNvgG1sTqy&_nc_ht=scontent.fdac22-1.fna&oh=00_AYAHhtR3iitsjdXLxsZgyPCPDrQma7X15w1uK_Q3vJOJ0w&oe=66D2698A",
       number: 01711111111,
    ),
     UsarModal(
      name: "MD SIFATULLAH ",
      image: "https://scontent.fdac22-1.fna.fbcdn.net/v/t39.30808-6/454429465_515090707685832_5254090431719743924_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=6ee11a&_nc_eui2=AeFSnrpUvf5HxEs5qr8C0WA2ojFy2VoTQDCiMXLZWhNAMG1nySfXb6iDM_NSH6Up6H_CNVEIR_3XzUD6w4uG0fvp&_nc_ohc=6IghQcaS1HsQ7kNvgEeqaZd&_nc_ht=scontent.fdac22-1.fna&_nc_gid=As7oPZnWbfLp6qRRfBhOzEH&oh=00_AYAXgBgPBhlraelEvKcVZAT26LWLzKqP5UxN293QQ83_OA&oe=66D24438",
       number: 01711111111,
    ),
  ];

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
          SizedBox(width: 20),
        ],
        leading: Align(
          alignment:
              AlignmentDirectional.centerEnd, // Aligns the image to the end
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.network(
                'https://cdn-icons-png.flaticon.com/128/17373/17373352.png'),
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ContactPage(contacts:contacts[index] ,)));
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 219, 227, 236),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(contacts[index].image!),
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
