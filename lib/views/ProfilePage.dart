// ignore_for_file: file_names

import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile Page"),
        backgroundColor: Colors.blue,
      ),
      body:
          const Text("this is the profile page", selectionColor: Colors.black),
    );
  }
}
