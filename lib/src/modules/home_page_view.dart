import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({super.key});

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {

   bool isfirst = true;

  // @override
  // void initState() {
  //   super.initState();
  //   Timer(Duration(seconds: 4), () {
  //     reload();
  //   });
  // }

  void reload() {
    setState(() {
      if (isfirst) {
        isfirst = false;
      } else {
        isfirst = true;
      }
    });
  }

  
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
            AnimatedCrossFade(
              firstChild: Image.asset(
                'assets/images/Itachi.webp',
                width: 500,
                height: 500,
              ),
              secondChild: Image.asset(
                'assets/images/Boruto.png',
                width: 400,
                height: 400,
              ),
              crossFadeState: isfirst
                  ? CrossFadeState.showFirst
                  : CrossFadeState.showSecond,
              duration: Duration(seconds: 4),
              sizeCurve: Curves.fastOutSlowIn,
            ),
            SizedBox(height: 11),
            ElevatedButton(
              onPressed: () {
                reload();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.cyan,
                foregroundColor: Colors.black,
              ),
              child: Text('Change Image'),
            ),
          ],
        ),
      ),
    );
  }
}


