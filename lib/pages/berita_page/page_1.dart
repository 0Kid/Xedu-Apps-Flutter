import 'package:flutter/material.dart';

class PageSatu extends StatefulWidget {
  const PageSatu({Key? key}) : super(key: key);

  @override
  State<PageSatu> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<PageSatu> {
  int click = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Webinar'),
        centerTitle: true,
        actions: <Widget>[],
        backgroundColor: Colors.blue,
      ),
      body: Image.asset(
        'assets/images/berita1.png',
        scale: 0.05,
      ),
    );
  }
}
