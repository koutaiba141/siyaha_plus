import 'package:flutter/material.dart';
 
class StatisticsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Statistics'),
      ),
      body: Center(
        child: Text(
          'Statistics Page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
