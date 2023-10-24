import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  List<Widget> generateBoxes(int n, double w, double h) {
    List<Widget> boxes = [];
    List<Color> fillColors = [
      Colors.blue,
      Colors.green,
      Colors.purple,
      Colors.pink
    ];

    for (int i = 0; i < n; i++) {
      Container box = Container(
        child: Center(child: Text(i.toString())),
        color: fillColors[i],
        width: w,
        height: h,
        margin: EdgeInsets.all(8.0),
      );
      boxes.add(box);
    }

    return boxes;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter UI Succinctly'),
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Colors.blue, Colors.orange],
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: generateBoxes(4, 50, 50),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.ac_unit),
          onPressed: () {
            print('Oh, it is cold outside...');
          },
        ),
      ),
      theme: ThemeData(
        primaryColor: Colors.indigo,
        hintColor: Colors.amber,
        textTheme: TextTheme(
          bodyText2: TextStyle(fontSize: 26, fontStyle: FontStyle.italic),
        ),
        brightness: Brightness.dark,
      ),
    );
  }
}
