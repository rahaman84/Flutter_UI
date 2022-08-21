import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:scsapp/login_page.dart';
// import 'package:scsapp/login_page.dart';
// import 'package:scsapp/dashboard.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('Health Tips'))),
      body: const Center(
        child: Text('My Page!'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Rahaman'),
              accountEmail: Text('arhamanrif@gmail.com'),
              currentAccountPicture: Center(
                child: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  radius: 100.0,
                  backgroundImage: NetworkImage(
                      'https://cdn.pixabay.com/photo/2022/08/01/10/36/tulips-7357877_960_720.jpg'),
                ),
              ),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
