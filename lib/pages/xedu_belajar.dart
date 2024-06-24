import 'package:flutter/material.dart';

class XeduBelajar extends StatelessWidget {
  const XeduBelajar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text(
          'Pilih Topik Belajar',
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          _buildTopicCard(
            context,
            'assets/images/topik1.png', // Path gambar topik 1
            screenWidth,
          ),
          const SizedBox(height: 16),
          _buildTopicCard(
            context,
            'assets/images/topik2.png', // Path gambar topik 2
            screenWidth,
          ),
          const SizedBox(height: 16),
          _buildTopicCard(
            context,
            'assets/images/topik3.png', // Path gambar topik 3
            screenWidth,
          ),
          const SizedBox(height: 16),
          _buildTopicCard(
            context,
            'assets/images/topik4.png', // Path gambar topik 4
            screenWidth,
          ),
        ],
      ),
    );
  }

  Widget _buildTopicCard(
      BuildContext context, String imagePath, double screenWidth) {
    return InkWell(
      onTap: () {
        // Aksi ketika topik ditekan
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('Anda memilih topik dengan gambar $imagePath'),
        ));
      },
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16.0),
          child: Image.asset(
            imagePath,
            width: screenWidth * 0.9, // 90% dari lebar layar
            height: screenWidth * 0.5, // Setengah dari lebar layar
            fit: BoxFit.cover, // Menyesuaikan gambar agar penuh
          ),
        ),
      ),
    );
  }
}
