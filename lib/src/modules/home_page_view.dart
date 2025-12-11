import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({super.key});

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {

  var arrIndex = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: const Text('Home Page'),
        centerTitle: true,
      ),

      body:ListWheelScrollView(
        itemExtent: 200,
        children: arrIndex
            .map(
              (value) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    color: Colors.cyan.shade200,
                  ),
                  width: double.infinity,
                  child: Center(
                    child: Text('$value', style: TextStyle(fontSize: 21)),
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}


