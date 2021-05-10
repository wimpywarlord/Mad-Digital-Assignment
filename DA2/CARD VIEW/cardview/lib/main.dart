import 'package:flutter/material.dart';

void main() => runApp(MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('KSHITIJ DHYANI MAD DA')),
        backgroundColor: Colors.white12,
        body: MyCardWidget(),
      ),
    );
  }
}

/// This is the stateless widget that the main application instantiates.
class MyCardWidget extends StatelessWidget {
  MyCardWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      width: 350,
      height: 150,
      padding: new EdgeInsets.all(10.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        color: Colors.white,
        elevation: 10,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const ListTile(
              leading: Icon(Icons.games, size: 60),
              title: Text('Kshitij Dhyani', style: TextStyle(fontSize: 20.0)),
              subtitle: Text('MAD degital Assignment.',
                  style: TextStyle(fontSize: 18.0)),
            ),
          ],
        ),
      ),
    ));
  }
}
