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
    // debugPrint("color list ----> $lst");
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        // backgroundColor: Color(colorData[_counter]),
      ),
      body: Container(
        color:Color(colorData[_counter]),
        // color:  colorlist[_counter],   // for list
        // color: Color(colorlist),  ////______________
        // color:  lst[_counter],   // for list
        // color: Color(lst),
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

// colorData == _counter--;
// ignore: unrelated_type_equality_checks
// if (colorData != 0) {
//   // ignore: unrelated_type_equality_checks
//   colorData == _counter--;
// }
//
// colorlist = maxnum ?? colorlist == _counter-- ;

//      // colorlist = minnum ?? colorlist == _counter++ ;
//
// debugPrintStack(label: "g enerarte list random ---------> $colorlist");

// int _counter=0, max = 10, min = 0;

// colorlist==min
//     ? colorlist == _counter++
//     : colorlist==max ? colorlist == _counter--:colorlist==_counter;

// colorlist==max ? colorlist==_counter--:colorlist==_counter;
// colorlist==max ?? colorlist==_counter--;
//

// colorlist==min ? colorlist==_counter++:colorlist==_counter;
// colorlist==min ?? colorlist==_counter++;
//
//
// // List<Color> colorlist = [
// //   Colors.lightBlueAccent,
// //   Colors.pinkAccent,
// //   Colors.purple,
// //   Colors.deepPurple,
// //   Colors.blueAccent,
// //   Colors.green,
// //   Colors.lightGreenAccent,
// //   Colors.yellowAccent,
// //   Colors.amber,
// //   Colors.orange,
// //   Colors.red,
// // ];
// //
// // void generateColor() {
// //   setState(() {
// //     // ignore: unrelated_type_equality_checks
// //     colorlist == _counter++;
// //   });
// // }
// //
// // void decrementNumber() {
// //   setState(() {
// //     // ignore: unrelated_type_equality_checks
// //     colorlist == _counter--;
// //   });
// // }
//

// backgroundColor: colorlist,
// backgroundColor:  Color[context],
// }

//_______________________________________________________FOR _________LOOP__________________________________
// import 'dart:math';
//
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;
//   dynamic colorlist = 0xffffffff;
//   // Random random = Random();
//
//   void generateColor() {
//     colorlist = Random().nextInt(0xffffffff);
//     setState(() {
//       for (var colorlist = 0; colorlist < 1; colorlist++) {
//         colorlist == _counter++;
//       }
//       // colorlist == _counter++;
//     });
//   }
//
//   void decrementNumber() {
//     colorlist = Random().nextInt(0xffffffff);
//     // modInverse(colorlist)
//     setState(() {
//       // colorlist == _counter--;
//       for (var colorlist = 0; colorlist > 1; colorlist--) {
//         colorlist == _counter--;
//       }
//       // colorlist = colorlist == _counter-- ? colorlist : colorlist == _counter++ ? colorlist : Text("error");
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // backgroundColor: colorlist,
//       // backgroundColor:  Color[context],
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Container(
//         // color:  colorlist[_counter],   // for list
//         color: Color(colorlist),
//         width: 450,
//         height: 700,
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               const Text(
//                 textAlign: TextAlign.center,
//                 'You have pushed the button this many times:',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 15,
//                   shadows: [
//                     Shadow(
//                       color: Colors.black,
//                       offset: Offset(-1, 1),
//                       blurRadius: double.infinity,
//                     ),
//                   ],
//                 ),
//               ),
//               Text(
//                 '$_counter',
//                 style: const TextStyle(
//                   color: Colors.white,
//                   fontSize: 40,
//                   shadows: [
//                     Shadow(
//                       color: Colors.black,
//                       offset: Offset(-3.5, 2),
//                       blurRadius: double.infinity,
//                     ),
//                   ],
//                 ),
//               ),
//               FloatingActionButton(
//                 onPressed: decrementNumber,
//                 tooltip: 'decrement',
//                 child: const Icon(
//                   Icons.remove,
//                 ),
//               ),
//               FloatingActionButton(
//                 onPressed: generateColor,
//                 tooltip: 'Increment',
//                 child: const Icon(Icons.add),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// List<Color> colorlist = [
//   Colors.lightBlueAccent,
//   Colors.pinkAccent,
//   Colors.purple,
//   Colors.deepPurple,
//   Colors.blueAccent,
//   Colors.green,
//   Colors.lightGreenAccent,
//   Colors.yellowAccent,
//   Colors.amber,
//   Colors.orange,
//   Colors.red,
// ];
//
// void generateColor() {
//   setState(() {
//     // ignore: unrelated_type_equality_checks
//     colorlist == _counter++;
//   });
// }
//
// void decrementNumber() {
//   setState(() {
//     // ignore: unrelated_type_equality_checks
//     colorlist == _counter--;
//   });

///_____________________________________________________________________________________________________________________________________________________________________-
// ///import 'dart:math';
// //
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   int _counter=0;
//   Random rnd = Random();
//   List lst = [
//   Color(0xffffffff),
//   Color(0xff675674),
//   Color(0xff365462),
//   Color(0xff244668),
//   Color(0xff786769),
//   Color(0xff798797),
//   ];
//   randomListItem(List lst) => lst[Random().nextInt(lst.length)];
//
//   void generateColor() {
//     setState(() {
//       lst==_counter++;
//     });
//   }
//
//   void decrementNumber() {
//     setState(() {
//       lst==_counter--;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     // debugPrint("color list ----> $colorlist");
//     debugPrint("color list ----> $lst");
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Container(
//         color:  lst[_counter],   // for list
//         // color: Color(),    // rendom
//         width: 450,
//         height: 700,
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               const Text(
//                 textAlign: TextAlign.center,
//                 'You have pushed the button this many times:',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 15,
//                   shadows: [
//                     Shadow(
//                       color: Colors.black,
//                       offset: Offset(-1, 1),
//                       blurRadius: double.infinity,
//                     ),
//                   ],
//                 ),
//               ),
//               Text(
//                 '$_counter',
//                 style: const TextStyle(
//                   color: Colors.white,
//                   fontSize: 40,
//                   shadows: [
//                     Shadow(
//                       color: Colors.black,
//                       offset: Offset(-3.5, 2),
//                       blurRadius: double.infinity,
//                     ),
//                   ],
//                 ),
//               ),
//               FloatingActionButton(
//                 onPressed: decrementNumber,
//                 tooltip: 'decrement',
//                 child: const Icon(
//                   Icons.remove,
//                 ),
//               ),
//               // FloatingActionButton(
//               //   onPressed: generateColor,
//               //   tooltip: 'decrement',
//               //   child: const Icon(
//               //     Icons.remove,
//               //   ),
//               // ),
//               FloatingActionButton(
//                 onPressed: generateColor,
//                 tooltip: 'Increment',
//                 child: const Icon(Icons.add),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
