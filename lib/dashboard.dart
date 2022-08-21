import 'package:flutter/material.dart';
import 'package:scsapp/login_page.dart';
// import 'package:scsapp/login_page.dart';
// import 'package:scsapp/dashboard.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Drawer(
                child: ListView(
              children: [
                const DrawerHeader(
                  
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: CircleAvatar(                 
                    backgroundImage: NetworkImage(
                        'https://cdn.pixabay.com/photo/2022/05/22/16/50/outdoors-7213961_960_720.jpg'),
                  ),
                  
                ),
               
                const ListTile(
                  leading: Icon(Icons.message),
                  title: Text('Messages'),
                ),
                const ListTile(
                  leading: Icon(Icons.account_circle),
                  title: Text('Profile'),
                ),
                const ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('Settings'),
                ),
                ListTile(
                  title: const Text('Item 2'),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                    // Navigator.pop(context) ;
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginPage()),
                    );
                  },
                ),
              ],
            )),
            // Center(
            //   child: Text(
            //     "hello",
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
