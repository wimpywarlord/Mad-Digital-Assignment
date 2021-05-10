import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  MyAppState createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  final items = List<String>.generate(20, (i) => "Item ${i + 1}");

  @override
  Widget build(BuildContext context) {
    final title = 'Kshitij Dhyani Digital assignment';

    return MaterialApp(
      title: title,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text(title),
          ),
          // Create a ListView
          body: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              final item = items[index];
              return Dismissible(
                // Specify the direction to swipe and delete
                direction: DismissDirection.endToStart,
                key: Key(item),
                onDismissed: (direction) {
                  // Removes that item the list on swipwe
                  setState(() {
                    items.removeAt(index);
                  });
                  // Shows the information on Snackbar
                  Scaffold.of(context)
                      .showSnackBar(SnackBar(content: Text("$item dismissed")));
                },
                background: Container(color: Colors.red[100]),
                child: ListTile(title: Text('$item')),
              );
            },
          )),
    );
  }
}
