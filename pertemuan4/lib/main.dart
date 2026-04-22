import 'package:flutter/material.dart';
import 'package:pertemuan4/page/beranda_page.dart';
import 'package:pertemuan4/page/profile_page.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int currentPage = 0;

  final List<Widget> _pages = [BerandaPage(), ProfilePage()];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: _pages[currentPage],
        bottomNavigationBar: SalomonBottomBar(
          currentIndex: currentPage,
          onTap: (i) => setState(() => currentPage = i),
          items: [
            SalomonBottomBarItem(
              icon: Icon(Icons.home),
              title: Text("Beranda"),
            ),
            SalomonBottomBarItem(
              icon: Icon(Icons.person),
              title: Text("Profile"),
            ),
          ],
        ),
      ),
    );
  }
}