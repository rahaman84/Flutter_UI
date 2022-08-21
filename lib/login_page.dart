import 'package:flutter/material.dart';
//import 'package:scsapp/dashboard.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 233, 222, 222),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: TextField(
              obscureText: false,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.person,
                  color: Colors.amber,
                ),
                border: OutlineInputBorder(),
                labelText: 'Name',
              ),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock_open),
                  border: OutlineInputBorder(),
                  labelText: "Password"),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          OutlinedButton(
              onPressed: () {
                Navigator.pushNamed(context, "dashboard");
              },
              child: const Text("Hello"),
          ),
        ],
      ),
    );
  }
}
