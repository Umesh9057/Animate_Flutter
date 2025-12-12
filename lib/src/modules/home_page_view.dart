import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({super.key});

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {

  var arrData = [
  {'name': 'Itachi', 'mobno': '9987456132', 'unread': '2'},
  {'name': 'Minato', 'mobno': '9987456132', 'unread': '2'},
  {'name': 'Jiraya', 'mobno': '9987456132', 'unread': '2'},
  {'name': 'Zoro', 'mobno': '9987456132', 'unread': '2'},
  {'name': 'Nico Robin', 'mobno': '9987456132', 'unread': '2'},
  {'name': 'Nami', 'mobno': '9987456132', 'unread': '2'},
  {'name': 'Boa', 'mobno': '9987456132', 'unread': '2'},
  {'name': 'Waguri', 'mobno': '9987456132', 'unread': '2'},
  {'name': 'Boruto', 'mobno': '9987456132', 'unread': '2'},
  {'name': 'Naruto', 'mobno': '9987456132', 'unread': '2'},
  {'name': 'Lord Pain', 'mobno': '9987456132', 'unread': '2'},
  // 'Itachi',
  // 'Minato',
  // 'Jiraya',
  // 'Zoro',
  // 'Nico Robin',
  // 'Nami',
  // 'Boa',
  // 'Waguri',
  // 'Boruto',
  // 'Naruto',
  // 'Lord Pain',
  // 'Sasuke',
  // 'Rangiku',
  // 'Orihime',
];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: const Text('Home Page'),
        centerTitle: true,
      ),

      body: Container(
        color: Colors.white,
        child: ListView(
          children: arrData.map((value) {
            return ListTile(
              leading: Icon(Icons.account_circle),
              title: Text(value['name'].toString()),
              subtitle: Text(value['mobno'].toString()),
              trailing: CircleAvatar(
                radius: 12,
                backgroundColor: Colors.cyan,
                child: Text(value['unread'].toString()),
              ),
            );

            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Container(
            //     decoration: BoxDecoration(
            //       borderRadius: BorderRadius.circular(21),
            //       color: Colors.black54,
            //     ),
            //     child: Padding(
            //       padding: const EdgeInsets.all(8.0),
            //       child: Center(
            //         child: Text(
            //           value,
            //           style: TextStyle(
            //             fontFamily: 'Font2',
            //             fontSize: 21,
            //             color: Colors.cyan,
            //           ),
            //         ),
            //       ),
            //     ),
            //   ),
            // );
          }).toList(),
        ),
      ),
    );
  }
}


