import 'package:flutter/material.dart';
import 'package:xedu_app/pages/Xeducation/x_education.dart';
import 'package:xedu_app/pages/berita_page/page_1.dart';
import 'package:xedu_app/pages/xeduplay/xedu_play.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          // Header Section
          Container(
            padding:
                const EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 10),
            decoration: const BoxDecoration(
              color: Color(0xFF432C81),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      "assets/images/xedu1.png",
                      scale: 1.5,
                    ),
                    const Icon(
                      Icons.notifications,
                      size: 30,
                      color: Colors.white,
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const Padding(
                  padding: EdgeInsets.only(left: 3, bottom: 15),
                  child: Text(
                    "Hi, Rey \nBagaimana kabarmu?",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1,
                      wordSpacing: 2,
                      color: Colors.white,
                    ),
                  ),
                ),
                Card(
                  elevation: 1,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        const CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage('assets/images/rey.png'),
                        ),
                        const SizedBox(width: 8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('Pelajar',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            const Text('17 Tahun',
                                style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                        const Spacer(),
                        ElevatedButton.icon(
                          onPressed: () {
                            // Add your function here
                          },
                          icon: const Icon(Icons.sentiment_satisfied_alt,
                              size: 12),
                          label: const Text('Check Your Mood'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFFFFE0E0),
                            foregroundColor: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8.0, vertical: 8.0),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Features Section

          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildFeatureButton(
                  'X-Education',
                  'assets/images/xeducation.png',
                  () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => XEducationPage()));
                  },
                ),
                _buildFeatureButton(
                  'Konselling',
                  'assets/images/konselling.png',
                  () {
                    // Add your navigation here
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => XEducationPage()));
                  },
                ),
                _buildFeatureButton(
                  'Journal',
                  'assets/images/jurnal.png',
                  () {
                    // Add your navigation here
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => XeduPlay()));
                  },
                ),
              ],
            ),
          ),
          // Image Section
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const PageSatu()));
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16.0),
                child: Image.asset(
                  'assets/images/page1.png', // Replace with your image path
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          // News Section
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Berita Terkini',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                const SizedBox(height: 10),
                InkWell(
                  onTap: () {
                    // Add navigation to the news detail page
                  },
                  child: Container(
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Menag Terbitkan Aturan Pencegahan Kekerasan Seksual di Lemdik Agama',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 8),
                        const Text('5 Hari yang Lalu',
                            style: TextStyle(color: Colors.grey)),
                        const SizedBox(height: 8),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12.0),
                          child: Image.asset(
                            'assets/images/berita1.png', // Replace with your image path
                            fit: BoxFit.cover,
                            height: 150, // Adjust the height as necessary
                            width: double.infinity,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFeatureButton(
      String title, String iconPath, VoidCallback onTap) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        padding: const EdgeInsets.all(16.0),
      ),
      child: Column(
        children: [
          Image.asset(iconPath, width: 48, height: 48),
          const SizedBox(height: 8),
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
