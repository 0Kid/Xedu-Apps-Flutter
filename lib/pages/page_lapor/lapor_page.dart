import 'package:flutter/material.dart';
import 'package:xedu_app/pages/xeduplay/xedu_play.dart';

class LaporPage extends StatefulWidget {
  const LaporPage({Key? key}) : super(key: key);

  @override
  _LaporPageState createState() => _LaporPageState();
}

class _LaporPageState extends State<LaporPage> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(0, 41, 37, 37),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Stack(
        children: [
          // Background image with transparency
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/images/xeduglass.png'), // Ganti dengan path gambar background yang transparan
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.black
                      .withOpacity(0.5), // Atur opasitas sesuai kebutuhan
                  BlendMode.darken,
                ),
              ),
            ),
          ),
          // Main content
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Logo
                  Image.asset(
                    'assets/images/xedu2.png', // Ganti dengan path logo XEDU
                    width: 300,
                    height: 300,
                  ),
                  const SizedBox(height: 30),
                  // Descriptive text
                  const Text(
                    'Pelaporan Anonim Terkait Kasus\nYang Terjadi di SMPN 03 Baleendah',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 30),
                  // Checkbox with label
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Checkbox(
                        value: _isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            _isChecked = value ?? false;
                          });
                        },
                        activeColor: Colors.white,
                        checkColor: Colors.black,
                        side: const BorderSide(
                          color: Colors.white, // Warna border checkbox
                        ),
                      ),
                      const Text(
                        'Menyetujui Syarat dan Ketentuan yang Berlaku',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  // Buttons
                  ElevatedButton(
                    onPressed: _isChecked
                        ? () {
                            // Arahkan ke halaman buat laporan
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => XeduPlay()),
                            );
                          }
                        : null,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      minimumSize:
                          const Size(double.infinity, 50), // Lebar tombol
                    ),
                    child: const Text('Buat Laporan'),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      // Arahkan ke halaman cek status laporan
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => XeduPlay()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      foregroundColor: Colors.white,
                      minimumSize:
                          const Size(double.infinity, 50), // Lebar tombol
                      side: const BorderSide(color: Colors.white),
                    ),
                    child: const Text('Cek Status Laporan'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
