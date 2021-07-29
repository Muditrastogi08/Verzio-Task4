import 'dart:ui';

import 'package:flutter/Material.dart';
import 'package:flutter/cupertino.dart';
import 'secondscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/first': (context) => MySecondscreen(),
      },
      title: "Navigation",
      theme:
          ThemeData(primaryColor: Colors.red[300], brightness: Brightness.dark),
      home: Myhomepage(),
    );
  }
}

class Myhomepage extends StatefulWidget {
  const Myhomepage({Key? key}) : super(key: key);

  @override
  _MyhomepageState createState() => _MyhomepageState();
}

class _MyhomepageState extends State<Myhomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Icon(
            Icons.task,
            size: 50,
          )
        ],
        title: Center(
          child: Text(
            "Task 4",
            style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontFamily: 'Cursive'),
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            Text(
              "Home",
              style: TextStyle(fontSize: 50),
            ),
            Text(
              "Contacts",
              style: TextStyle(fontSize: 50),
            )
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                width: 190.0,
                height: 190.0,
                decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    image: new DecorationImage(
                        fit: BoxFit.fill,
                        image: new NetworkImage(
                            "https://pngimg.com/uploads/google/google_PNG19635.png")))),
            Text(
              "First Screen",
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/first');
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red[300]),
                ),
                child: Text("Submit Button"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
