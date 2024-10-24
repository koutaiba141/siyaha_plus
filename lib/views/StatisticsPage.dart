import 'package:flutter/material.dart';
 
class StatisticsPage extends StatelessWidget {
  const StatisticsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Statistics'),
      ),
      body: const Center(
        child: Text(
          'Statistics Page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
