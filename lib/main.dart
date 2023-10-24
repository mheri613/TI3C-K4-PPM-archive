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
        color: fillColors[i],
        width: w,
        height: h,
        margin: const EdgeInsets.all(8.0),
        child: Center(child: Text(i.toString())),
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
          title: const Text('Flutter UI Succinctly'),
        ),
        body: Container(
          decoration: const BoxDecoration(
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
          child: const Icon(Icons.ac_unit),
          onPressed: () {
            print('Oh, it is cold outside...');
          },
        ),
      ),
      theme: ThemeData(
        primaryColor: Colors.indigo,
        hintColor: Colors.amber,
        textTheme: const TextTheme(
          bodyMedium: TextStyle(fontSize: 26, fontStyle: FontStyle.italic),
        ),
        brightness: Brightness.dark,
      ),
    );
  }
}
