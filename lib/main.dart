import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  dynamic colorlist = 0xffffffff;
  List colorData = [];

  void generateColor() {
    colorlist = Random().nextInt(0xff123456);
    colorData.add(colorlist);
    setState(() {
      colorlist == _counter++;
    });
  }

  void decrementNumber() {
    setState(() {
      if(_counter!=0){
        _counter--;
      }
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    colorData.add(colorlist);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    debugPrint("color list ----> $colorlist");
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        color:Color(colorData[_counter]),
        width: 450,
        height: 700,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                textAlign: TextAlign.center,
                'You have pushed the button this many times:',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  shadows: [
                    Shadow(
                      color: Colors.black,
                      offset: Offset(-1, 1),
                      blurRadius: double.infinity,
                    ),
                  ],
                ),
              ),
              Text(
                '$_counter',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  shadows: [
                    Shadow(
                      color: Colors.black,
                      offset: Offset(-3.5, 2),
                      blurRadius: double.infinity,
                    ),
                  ],
                ),
              ),
              FloatingActionButton(
                onPressed: decrementNumber,
                tooltip: 'decrement',
                child: const Icon(
                  Icons.remove,
                ),
              ),
              FloatingActionButton(
                onPressed: generateColor,
                tooltip: 'Increment',
                child: const Icon(Icons.add),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
