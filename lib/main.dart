import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'routes/app_routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool isLoggedIn = prefs.getBool("isLoggedIn") ?? false;

  runApp(MyApp(isLoggedIn: isLoggedIn));
}

class MyApp extends StatelessWidget {
  final bool isLoggedIn;
  const MyApp({super.key, required this.isLoggedIn});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Praktikum Tugas 7",
      theme: ThemeData(
        fontFamily: "Poppins",
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF0A1D37), // navy
          primary: const Color(0xFF0A1D37),
          secondary: const Color(0xFFF2C94C), // yellow
        ),
        scaffoldBackgroundColor: const Color(0xFFF5F6FA),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF0A1D37),
          foregroundColor: Colors.white,
        ),
      ),
      initialRoute: isLoggedIn ? AppRoutes.home : AppRoutes.login,
      routes: AppRoutes.routes,
    );
  }
}
