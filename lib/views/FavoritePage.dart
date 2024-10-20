// ignore_for_file: file_names

import 'package:flutter/material.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Favorite page"),
        backgroundColor: Colors.blue,
      ),
      body:
          const Text("this is the Favorite page", selectionColor: Colors.black),
    );
  }
}
