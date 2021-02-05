import 'package:flutter/material.dart';
import 'package:share/share.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    var title = 'Web Images';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Column(
          children: [
            Image.network(
                'https://miro.medium.com/max/1400/1*ysCyZd_M0C6F78GUSxinjQ.jpeg'),
            Text("Share"),
            FlatButton(
              onPressed: () {
                /*...*/
                Share.share('https://miro.medium.com/max/1400/1*ysCyZd_M0C6F78GUSxinjQ.jpeg');


              },
              child: Text(
                "Flat Button",
              ),
            )
          ],
        ),
      ),
    );
  }
}
