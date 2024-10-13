import 'package:flutter/material.dart';
import 'package:pertemuan3_095/pages/home_page.dart';

class MySettingPage extends StatefulWidget {
  const MySettingPage({super.key});

  @override
  State<MySettingPage> createState() => _MySettingPageState();
}

class _MySettingPageState extends State<MySettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Halaman Setting",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: (){
              Navigator.pushNamed(context, "/ProfilePage");
            },
            icon: const Icon(Icons.favorite),
          ),
          IconButton(
            onPressed: (){
              Navigator.pushNamed(context, "/HomePage");
            },
            icon: const Icon(Icons.home),
          ),
        ],
      ),
      backgroundColor: const Color.fromARGB(255, 6, 255, 89),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const MySettingPage();
                }));
              },
              child: const Text("Pindah ke Settings Page"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const MyHomePage();
                }));
              },
              child: const Text("Pindah ke Home Page"),
            ),
          ],
        ),
      ),
    );
  }
}