import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({super.key});

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  var _width = 200.0;
  var _height = 100.0;
  bool flag = true;

  Decoration myDecor = BoxDecoration(
    borderRadius: BorderRadius.circular(3),
    color: Colors.blueAccent,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: const Text('Home Page'),
        centerTitle: true,
      ),

      body: Center(
        child: Column(
          children: [
            AnimatedContainer(
              duration: Duration(seconds: 2),
              width: _width,
              height: _height,
              curve: Curves.bounceOut,
              decoration: myDecor,
            ),
            SizedBox(height: 11),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  if (flag) {
                    _width = 120.0;
                    _height = 150.0;
                    flag = false;
                    myDecor = BoxDecoration(
                      borderRadius: BorderRadius.circular(21),
                      color: Colors.greenAccent,
                    );
                  } else {
                    _height = 100.0;
                    _width = 200.0;
                    flag = true;
                    myDecor = BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      color: Colors.blueAccent,
                    );
                  }
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.cyan,
                foregroundColor: Colors.black,
              ),
              child: Text(
                'Animate',
                style: TextStyle(fontSize: 21, fontWeight: FontWeight.w200),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
