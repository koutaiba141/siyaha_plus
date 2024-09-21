import 'package:flutter/material.dart';

class TourismInfoPage extends StatelessWidget {
  const TourismInfoPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tourism page"),
        backgroundColor: Colors.blue,
      ),
      body: Center(child: Text("Tourism Info Page")),
    );
  }
}
