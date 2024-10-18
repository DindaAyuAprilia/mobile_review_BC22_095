// Pertemuan4

// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:pertemuan3_095/widget/custom_button.dart';
// import 'package:pertemuan3_095/widget/custom_text_filed.dart';

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   final TextEditingController username = TextEditingController();
//   final TextEditingController password = TextEditingController();
//   String? _selectedGender;
//   bool _setuju = false;

//   String _result = ''; // Variabel untuk menyimpan hasil inputan

//   void _submit() {
//     setState(() {
//       _result = 'Username: ${username.text}\n'
//                 //'Password: ${password.text}\n'
//                 'Gender: ${_selectedGender ?? "Belum memilih"}\n'
//                 'Setuju: ${_setuju ? "Ya" : "Tidak"}\n';
//       username.clear();
//       password.clear();
//       _selectedGender = null;
//       _setuju = false;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Container(
//             width: double.infinity,
//             margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
//             child: MyTextField(controller: username, hintText: "Masukan nama anda....", labelText: "Username")
//             ),
//           Padding(
//             padding: const EdgeInsets.symmetric(vertical: 20),
//             child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Row(
//                         children: [
//                           Radio<String>(
//                             value:
//                                 'Cowo', // Nilai yang akan disimpan jika dipilih
//                             groupValue:
//                                 _selectedGender, // Grup nilai radio button
//                             onChanged: (value) {
//                               setState(() {
//                                 _selectedGender =
//                                     value; // Mengubah nilai yang dipilih
//                               });
//                             },
//                           ),
//                           Text(
//                             'Laki-laki',
//                             style: GoogleFonts.poppins(fontSize: 14),
//                           ),
//                         ],
//                       ),
//                       Row(
//                         children: [
//                           Radio<String>(
//                             value:
//                                 'Cewe', // Nilai yang akan disimpan jika dipilih
//                             groupValue:
//                                 _selectedGender, // Grup nilai radio button
//                             onChanged: (value) {
//                               setState(() {
//                                 _selectedGender =
//                                     value; // Mengubah nilai yang dipilih
//                               });
//                             },
//                           ),
//                           Text(
//                             'Cewe',
//                             style: GoogleFonts.poppins(fontSize: 14),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//             child: Row(
//               children: [
//                 Checkbox(
//                   value: _setuju,
//                   onChanged: (bool? value) {
//                     setState(() {
//                       _setuju = value ?? false; // Update status checkbox
//                     });
//                   },
//                 ),
//                 Text(
//                   "Accept of aggrement",
//                   style: GoogleFonts.poppins(fontSize: 16),
//                 )
//               ],
//             ),
//           ),
//           MyCustomButton(
//             onPressed: _submit, 
//             text: "Masuk"),

//           Expanded(
//             child: Container(
//               width: double.infinity,
//               height: 110,
//               margin: const EdgeInsets.all(15),
//               padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
//               decoration: BoxDecoration(
//                 color: const Color(0xFFFFD18E),
//                 borderRadius: BorderRadius.circular(10),
//               ),
//               child: Column(
//                 children: [
//                   Center(
//                     child: Text(
//                       'Hasil jawaban',
//                       style: GoogleFonts.poppins(
//                           fontSize: 15, fontWeight: FontWeight.bold),
//                     ),
//                   ),
//                   Expanded(
//                     child: Text(
//                       _result,
//                       style: GoogleFonts.poppins(
//                           fontSize: 12, fontWeight: FontWeight.bold),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       )
//     );
//   }
// }

// // Pertemuan 5
// import 'package:flutter/material.dart';
// import 'package:pertemuan3_095/pages/profile_page.dart';
// import 'package:pertemuan3_095/pages/setting_page.dart';

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Home Page"),
//       ),
//       drawer: Drawer(
//         backgroundColor: Colors.white,
//         child: Column(
//           children: [
//             const UserAccountsDrawerHeader(
//               currentAccountPicture: CircleAvatar(
//                 backgroundImage: AssetImage('assets/profile.png'),
//               ),
//               accountName: Text("Praktikum Mobile"),
//               accountEmail: Text('mobile@gmail.com'),
//               decoration: BoxDecoration(color: Colors.lightBlueAccent),
//             ),
//             ListTile(
//               leading: const Icon(Icons.settings),
//               title: const Text('Settings'),
//               onTap: () {
//                 Navigator.pushNamed(context, "/SettingsPage");
//               },
//             ),
//             ListTile(
//               leading: const Icon(Icons.search),
//               title: const Text('Cari'),
//               onTap: () {},
//             ),
//           ],
//         ),
//       ),
//       backgroundColor: Colors.red,
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.push(context, MaterialPageRoute(builder: (context) {
//                   return const MySettingPage();
//                 }));
//               },
//               child: const Text("Pindah ke Settings Page"),
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.push(context, MaterialPageRoute(builder: (context) {
//                   return const MyProfilePage();
//                 }));
//               },
//               child: const Text("Pindah ke Profile Page"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }








// Pertemuan 6

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    var tinggi = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text('PRAKTIKUM MOBILE (2209106095)'),
        backgroundColor: const Color.fromARGB(255, 247, 7, 255), // Purple-ish color for AppBar
      ),
      backgroundColor: const Color.fromARGB(255, 243, 243, 0),
      body: Column(
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                selected = !selected;
              });
            },
            child: Center(
              child: AnimatedContainer(
                width: selected ? lebar * 0.2 : lebar * 0.5,  // Ukuran berubah sesuai selected
                height: selected ? tinggi * 0.5 : tinggi * 0.3, // Tinggi berubah sesuai selected
                color: selected ? Colors.red : Colors.blue, // Warna berubah sesuai selected
                alignment: selected ? Alignment.center : AlignmentDirectional.topCenter,
                duration: const Duration(seconds: 2),
                curve: Curves.fastOutSlowIn,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
