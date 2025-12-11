import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hero Animation Widget'),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: Container(
        child: Hero(
          tag: 'Background',
          child: Image.asset('assets/images/naruto.jpg'),
        ),
      ),
    );
  }
}
