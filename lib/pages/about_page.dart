import 'package:flutter/material.dart';
import 'sidemenu.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("About"),
      ),
      drawer: const SideMenu(),
      body: const Center(
        child: Text(
          "Aplikasi Praktikum Tugas 7\nMenggunakan Flutter + Routing",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
