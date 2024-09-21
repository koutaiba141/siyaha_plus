// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:siyaha_plus_mobile/views/FavoritePage.dart';
import 'package:siyaha_plus_mobile/views/HomePage.dart';
import 'package:siyaha_plus_mobile/views/ProfilePage.dart';

class UserMainPage extends StatefulWidget {
  const UserMainPage({super.key});

  @override
  State<UserMainPage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<UserMainPage> {
  int _currentIndex = 0;
  final List<Widget> _pages = [HomePage(), FavoritePage(), ProfilePage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _pages[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currentIndex,
            onTap: (int index) {
              setState(() {
                _currentIndex = index;
              });
            },
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite), label: "Favorite"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: "Profile")
            ],
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.grey));
  }
}
