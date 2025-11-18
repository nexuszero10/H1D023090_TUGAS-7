import 'package:flutter/material.dart';
import 'sidemenu.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      drawer: const SideMenu(),
      body: const Center(
        child: Text(
          "Selamat datang di Home!",
          style: TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}
