import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({super.key});

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: const Text('Home Page'),
        centerTitle: true,
      ),

      body:  Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(
            colors: [Color(0xff4facfe), Color(0xff00f2fe)],
            center: Alignment.bottomCenter,
            stops: [0.0, 0.6],
          ),

          //  LinearGradient(
          //   colors: [Color(0xff5ee7df), Color(0xffb490ca)],
          //   begin: FractionalOffset(1.0, 0.0),
          //   end: FractionalOffset(0.0, 1.0),
          //   stops: [0.0, 0.5],
          // ),
        ),
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: Text('Gradient', style: TextStyle(fontSize: 21)),
            ),
          ],
        ),
      ),
    );
  }
}


