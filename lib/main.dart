import 'package:flutter/material.dart';
import 'package:scsapp/login_page.dart';
import 'package:scsapp/dashboard.dart';

void main() {
  runApp(const ScsApp()
  );
}
class ScsApp extends StatelessWidget {
  const ScsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'login_page',
      routes: {
        "login_page":(context) => const LoginPage(),
        "dashboard":(context) => const DashBoard(),
      },
    );
    
  }
}

