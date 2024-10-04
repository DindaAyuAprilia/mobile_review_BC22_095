import 'package:flutter/material.dart';
//import 'package:pertemuan3_095/pages/login_page.dart';
import 'package:pertemuan3_095/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

















































// PERTEMUAN 3



// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Pertemuan3',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: const MyHomePage(title: 'Dinda Ayu Aprilia 2209106095'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {

//   void _incrementCounter() {
//     setState(() {
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text(widget.title),
//       ),
//       // body: ListView(
//       //   children: [
//       //     Container(
//       //       width: 100,
//       //       height: 250,
//       //       margin: EdgeInsets.only(bottom: 10),
//       //       color: Colors.red,
//       //     ),
//       //     Container(
//       //       width: 100,
//       //       height: 250,
//       //       margin: EdgeInsets.only(bottom: 10),
//       //       color: Colors.blue,
//       //     ),
//       //     Container(
//       //       width: 100,
//       //       height: 250,
//       //       margin: EdgeInsets.only(bottom: 10),
//       //       color: Colors.green,
//       //     ),
//       //   ],
//       // ),

//       // body: GridView(
//       //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//       //     crossAxisCount: 3,
//       //   ),
//       //   children: [
//       //     Container(
//       //       width: 100,
//       //       height: 250,
//       //       margin: const EdgeInsets.only(bottom: 10),
//       //       color: Colors.red,
//       //     ),
//       //     Container(
//       //       width: 100,
//       //       height: 250,
//       //       margin: const EdgeInsets.only(bottom: 10),
//       //       color: Colors.blue,
//       //     ),
//       //     Container(
//       //       width: 100,
//       //       height: 250,
//       //       margin: const EdgeInsets.only(bottom: 10),
//       //       color: Colors.green,
//       //     ),
//       //   ],
//       // ),

//       body: Stack(
//         children: [
//           Positioned(
//             left: 0,
//             top: 0,
//             child: Container(
//               width: 100,
//               height: 250,
//               margin: const EdgeInsets.only(bottom: 10),
//               decoration: const BoxDecoration(
//                   image: DecorationImage(
//                       image: AssetImage("assets/bg1.jpg"))),
//             ),
//           ),
//           Positioned(
//             left: 50,
//             top: 50,
//             child: Container(
//               width: 100,
//               height: 250,
//               margin: const EdgeInsets.only(bottom: 10),
//               decoration: const BoxDecoration(
//                   image: DecorationImage(
//                       image: AssetImage("assets/bg1.jpg"))),
//             ),
//           ),
//           Positioned(
//             left: 100,
//             top: 100,
//             child: Container(
//               width: 100,
//               height: 250,
//               margin: const EdgeInsets.only(bottom: 10),
//               // color: Colors.green,
//               decoration: const BoxDecoration(
//                   image: DecorationImage(
//                       image: AssetImage("assets/bg1.jpg"))),
//             ),
//           ),
//         ],
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }