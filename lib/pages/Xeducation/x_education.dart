import 'package:flutter/material.dart';
import 'package:xedu_app/pages/home_page.dart';

class XEducationPage extends StatelessWidget {
  const XEducationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF432C81),
        title: Center(
            child: const Text(
          'X-Education',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        )),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            // Search Field
            TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                hintText: 'Coba cari materi belajarmu disini',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            const SizedBox(height: 16),
            // X-Education Grid
            const Text(
              'X-Education',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            GridView.count(
              crossAxisCount: 3,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                _buildGridItem(
                  context,
                  'Materi Choice',
                  'assets/images/Mchoice.png',
                  () {
                    // Navigate to Materi Choice Page
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
                ),
                _buildGridItem(
                  context,
                  'Pencegahan',
                  'assets/images/Pencegahan.png',
                  () {
                    // Navigate to Pencegahan Page
                  },
                ),
                _buildGridItem(
                  context,
                  'Self-Defense',
                  'assets/images/Sdefense.png',
                  () {
                    // Navigate to Self-Defense Page
                  },
                ),
                _buildGridItem(
                  context,
                  'Edukasi Seksual',
                  'assets/images/Eseksual.png',
                  () {
                    // Navigate to Edukasi Seksual Page
                  },
                ),
                _buildGridItem(
                  context,
                  'Kesehatan Mental',
                  'assets/images/Kmental.png',
                  () {
                    // Navigate to Kesehatan Mental Page
                  },
                ),
                _buildGridItem(
                  context,
                  'Pelaporan Kasus',
                  'assets/images/Pkasus.png',
                  () {
                    // Navigate to Pelaporan Kasus Page
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
                ),
              ],
            ),
            const SizedBox(height: 16),
            // Lainnya di X-Education Section
            const Text(
              'Lainnya di X-Education',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            _buildListTile(
              context,
              'Latihan Soal',
              'assets/images/Lsoal.png',
              () {
                // Navigate to Latihan Soal Page
              },
            ),
            _buildListTile(
              context,
              'Quiz',
              'assets/images/quiz.png',
              () {
                // Navigate to Quiz Page
              },
            ),
            _buildListTile(
              context,
              'Video Animasi',
              'assets/images/Vanimasi.png',
              () {
                // Navigate to Video Animasi Page
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildGridItem(
      BuildContext context, String title, String iconPath, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: Colors.grey[200],
            child: Image.asset(
              iconPath,
              width: 40,
              height: 40,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 14),
          ),
        ],
      ),
    );
  }

  Widget _buildListTile(
      BuildContext context, String title, String iconPath, VoidCallback onTap) {
    return ListTile(
      leading: Image.asset(iconPath, width: 40, height: 40),
      title: Text(title),
      onTap: onTap,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      tileColor: Colors.white,
      trailing: const Icon(Icons.arrow_forward_ios),
    );
  }
}

// Dummy pages for navigation, replace with actual pages
class MateriChoicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Materi Choice')),
      body: Center(child: Text('Materi Choice Content')),
    );
  }
}

class PencegahanPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Pencegahan')),
      body: Center(child: Text('Pencegahan Content')),
    );
  }
}

class SelfDefensePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Self-Defense')),
      body: Center(child: Text('Self-Defense Content')),
    );
  }
}

class EdukasiSeksualPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Edukasi Seksual')),
      body: Center(child: Text('Edukasi Seksual Content')),
    );
  }
}

class KesehatanMentalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Kesehatan Mental')),
      body: Center(child: Text('Kesehatan Mental Content')),
    );
  }
}

class PelaporanKasusPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Pelaporan Kasus')),
      body: Center(child: Text('Pelaporan Kasus Content')),
    );
  }
}

class LatihanSoalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Latihan Soal')),
      body: Center(child: Text('Latihan Soal Content')),
    );
  }
}

class QuizPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Quiz')),
      body: Center(child: Text('Quiz Content')),
    );
  }
}

class VideoAnimasiPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Video Animasi')),
      body: Center(child: Text('Video Animasi Content')),
    );
  }
}
