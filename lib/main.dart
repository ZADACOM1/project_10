import 'package:flutter/material.dart';
import 'package:flutter_application_10/deadline.dart';
import 'package:flutter_application_10/pages/home.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

import 'api/main_page.dart';

void main() {
  runApp(MaterialApp(
    home: NewsFeed(),
  ));
}

class NewsFeed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.green,
          title: Center(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                IconButton(
                    icon: Icon(Icons.home),
                    onPressed: () {
                      print("home icon");
                    }),
                IconButton(
                    icon: Icon(Icons.person_add_alt),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomeView()));
                      print("friend request");
                    }),
                IconButton(
                    icon: Icon(Icons.video_call),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Deadline()));
                      print("video section icon");
                    }),
                IconButton(
                    icon: Icon(Icons.person),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomeView()));
                      print("user icon");
                    })
              ]))),
      body: ListView(
        children: [
          Card(
            //copy from this
            child: Container(
              height: 300,
              child: Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('images/OIP.jpg'),
                    ),
                    onTap: () {
                      print("the listTile is clicked");
                    },
                    title: Text("Jamal"),
                    subtitle: Text("Jan, 25 2022"),
                    trailing: Icon(Icons.more_horiz),
                  ),
                  Text("Deadlines helps you to keep moving and deliver"
                      "content faster and it will increase your efficacy as well."),
                  SizedBox(
                    height: 16,
                  ),
                  Expanded(
                    child: Image.asset(
                        'images/2c6b401eecb5163f8ea322b79114ad67.jpg'),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          IconButton(
                            icon: Icon(Icons.thumb_up_alt),
                            onPressed: () {},
                          ),
                          Text("Like"),
                        ],
                      ),
                      Row(
                        children: [
                          IconButton(
                            icon: Icon(Icons.read_more),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Deadline()));
                            },
                          ),
                          Text("read more"),
                        ],
                      ),
                      Row(
                        children: [
                          IconButton(
                            icon: Icon(Icons.share),
                            onPressed: () {},
                          ),
                          Text("Share"),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Card(
            //copy from this
            child: Container(
              height: 300,
              child: Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('images/OIP.jpg'),
                    ),
                    onTap: () {
                      print("the listTile is clicked");
                    },
                    title: Text("Xepyr"),
                    subtitle: Text("Jan, 24 2022"),
                    trailing: Icon(Icons.more_horiz),
                  ),
                  Text(
                      "HUMANITY I SEE HUMANS, BUT NO HUMANITY Be the reason someone smiles. Be the reason someone feels loved and believes in the goodness in people. If we have no peace, it is because we have forgotten that we belong to each other."),
                  SizedBox(
                    height: 16,
                  ),
                  Expanded(
                    child: Image.asset('images/photo_2022-01-20_18-37-16.jpg'),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          IconButton(
                            icon: Icon(Icons.thumb_up_alt),
                            onPressed: () {},
                          ),
                          Text("Like"),
                        ],
                      ),
                      Row(
                        children: [
                          IconButton(
                            icon: Icon(Icons.read_more),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Deadline()));
                            },
                          ),
                          Text("read more"),
                        ],
                      ),
                      Row(
                        children: [
                          IconButton(
                            icon: Icon(Icons.share),
                            onPressed: () {},
                          ),
                          Text("Share"),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => MyApp()));
        },
        child: Icon(
          Icons.add,
        ),
        backgroundColor: Colors.green,
      ),
    );
  }
}
