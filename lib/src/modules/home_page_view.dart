import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({super.key});

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {

  var myOpacity = 1.0;
  bool flag = true;
  var Color = Colors.green;
  var _height = 100.0;
  var _width = 200.0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: const Text('Home Page'),
        centerTitle: true,
      ),

      body:  Center(
        child: Column(
          children: [
            AnimatedOpacity(
              opacity: myOpacity,
              duration: Duration(seconds: 3),
              curve: Curves.bounceIn,
              child: Container(width: _width, height: _height, color: Color),
            ),
            SizedBox(height: 11),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  if (flag) {
                    myOpacity = 0.3;
                    flag = false;
                    // Color = Colors.blue;
                    // _height = 150.0;
                    // _width = 120.0;
                  } else {
                    myOpacity = 1.0;
                    flag = true;
                    Color = Colors.green;
                    _height = 100.0;
                    _width = 200.0;
                  }
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.cyan,
                foregroundColor: Colors.black,
              ),
              child: Text('Animate'),
            ),
          ],
        ),
      ),
    );
  }
}


