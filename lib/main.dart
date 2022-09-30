import 'package:flutter/material.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({super.key});
  final String mainProfilePicture = "https://t3.ftcdn.net/jpg/03/46/83/96/360_F_346839683_6nAPzbhpSkIpb8pmAwufkC7c5eD7wYws.jpg";
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Center(
              child: Text(
                "Universal Package Tracker",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            backgroundColor: Colors.purple[700],
          ),
          drawer: Drawer(
              backgroundColor: Colors.purple[700],
              child: ListView(
                children: <Widget>[
                  UserAccountsDrawerHeader(
                    accountName: Text("Indavidual Person"),
                    accountEmail: Text("example@BlueEggs.com"),
                    currentAccountPicture: new GestureDetector(
                      onTap: () => print("Account clicked"),
                      child: new CircleAvatar(
                        backgroundImage: new NetworkImage(mainProfilePicture),
                      )
                    ),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/truckDrivingDown.jpg"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  ListTile(
                    title: Text("View Packages"),
                    trailing: Icon(Icons.backpack),
                  ),
                  Divider(),
                  ListTile(
                    title: Text("Account"),
                    trailing: Icon(Icons.account_box),
                  ),
                ],
              )
          ),
          body: SingleChildScrollView(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Column(
                  children: [
                    /*TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter a search term',
                      ),
                    ),*/
                    SizedBox(
                      width: 700,
                      height: 400,
                      child: Image(
                          image: AssetImage("assets/images/packageHandoff.jpg"),
                        ),
                      ),
                    Row(
                      children: [
                        Column(
                          children: [
                            SizedBox(
                              width: 400,
                              height: 50,
                              child: TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: 'Enter your tracking number',
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.search),
                              //style: ButtonStyle,
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                        child: Text("Images from:")
                    ),
                    Text("Adobe Stock: Profile Image\n"
                        "pexels.com: Package Handoff\n"
                        "iStock: Truck driving down road\n"
                        "Images should be liscensed or removed"),
                  ],
                ),
              ],
            ),
          )
      ),
    );
  }
}