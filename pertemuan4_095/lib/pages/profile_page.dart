import 'package:flutter/material.dart';
import 'package:pertemuan3_095/pages/home_page.dart';
import 'package:pertemuan3_095/pages/setting_page.dart';

class MyProfilePage extends StatefulWidget {
  const MyProfilePage({super.key});

  @override
  State<MyProfilePage> createState() => _MyProfilePageState();
}

class _MyProfilePageState extends State<MyProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Halaman Profile",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: (){
              Navigator.pushNamed(context, "/SettingsPage");
            },
            icon: const Icon(Icons.settings),
          ),
          IconButton(
            onPressed: (){
              Navigator.pushNamed(context, "/HomePage");
            },
            icon: const Icon(Icons.home),
          ),
        ],
      ),
      backgroundColor: const Color.fromARGB(255, 19, 143, 181),
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