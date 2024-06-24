import 'package:flutter/material.dart';

class XeduPlay extends StatefulWidget {
  const XeduPlay({Key? key}) : super(key: key);

  @override
  State<XeduPlay> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<XeduPlay> {
  int click = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFFAC4FF3),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 70, right: 30, left: 30),
              width: MediaQuery.of(context).size.width,
              height: 300,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: <Widget>[
                      IconButton(
                        icon: const Icon(Icons.arrow_back),
                        iconSize: 30,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      Expanded(child: Container()),
                      Image.asset(
                        'assets/images/logo1.png',
                        scale: 2,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Here is what you got in\n Xedu Play',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topRight: Radius.circular(70)),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      SizedBox(width: 25),
                      Text(
                        'Video',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Expanded(child: Container()),
                      Row(
                        children: [
                          Text('See all',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                              )),
                          SizedBox(
                            width: 20,
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
