import 'package:catlog1/custom_icon.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(CustomIcon.heart_empty),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.shopping_bag_outlined),
            onPressed: () {},
          )
        ],
        title: Text("Myntra", style: TextStyle(fontSize: 17,color: Colors.black)),
      ),
      body: Container(
        child: SingleChildScrollView(
            child: Column(children: [
          Container(
              margin: new EdgeInsets.symmetric(vertical: 10.0),
              child: Image(
                width: 500,
                image: AssetImage("assests/images/image1.jpeg"),
                fit: BoxFit.fill,
              )),
          SizedBox(
            height: 250,
            child: ListView.builder(
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Container(
                height: 250,
                width: 380,
                margin: EdgeInsets.all(7),
                child: Image(
                  width: 500,
                  image: AssetImage("assests/images/my1.jpeg"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Container(
            height: 30,
            child: Text(
              "FEATURED BRANDS",
              style: TextStyle(
                  fontSize:
                      19, //line height 200%, 1= 100%, were 0.9 = 90% of actual line height
                  color: Colors.black,
                  decorationThickness: 1.5, //decoration 'underline' thickness
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 230,
            child: ListView.builder(
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Container(
                height: 250,
                width: 200,
                margin: EdgeInsets.all(7),
                child: Image(
                  width: 500,
                  image: AssetImage("assests/images/my3.jpeg"),
                  fit: BoxFit.fill,
                ),
                // Center
              ), // Container
            ), // ListView.builder
          ) // SizedBox
        ])), // Column
      ), // SingleChildScrollView

      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Login"),
              accountEmail: Text("Sign Up"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.orange,
                child: Icon(
                  Icons.person,
                  size: 50,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.dataset_outlined),
              title: Text("Shop by Categories", style: TextStyle(fontSize: 15)),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.card_giftcard_outlined),
              title: Text("Order", style: TextStyle(fontSize: 15)),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text(
                "Settings",
                style: TextStyle(fontSize: 15),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
