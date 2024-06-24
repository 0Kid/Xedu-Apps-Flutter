import 'package:flutter/material.dart';
//import 'package:xedu_app/pages/Xeducation/x_education.dart';
//import 'package:xedu_app/pages/berita_page/page_1.dart';
import 'package:xedu_app/pages/home_page.dart';
import 'package:xedu_app/pages/page_lapor/lapor_page.dart';
//import 'package:xedu_app/pages/xeduplay/xedu_play.dart';

class HomePage1 extends StatefulWidget {
  const HomePage1({Key? key}) : super(key: key);

  @override
  _HomePageState1 createState() => _HomePageState1();
}

class _HomePageState1 extends State<HomePage1> {
  int currentIndex = 0;

  // Daftar layar untuk setiap item di BottomNavigationBar
  final List<Widget> screens = [
    const HomePage(),
    const LaporPage(),
    //const ProfilPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex], // Tampilan berdasarkan indeks saat ini
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'Lapor',
            icon: Icon(Icons.report),
          ),
          BottomNavigationBarItem(
            label: 'Profil',
            icon: Icon(Icons.person),
          ),
        ],
        currentIndex: currentIndex,
        onTap: (int index) {
          setState(() {
            currentIndex = index; // Update indeks halaman saat ini
          });
        },
      ),
    );
  }
}
