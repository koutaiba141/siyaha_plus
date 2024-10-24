// lib/views/CompanyDetailsPage.dart

import 'package:flutter/material.dart';

class CompanyDetailsPage extends StatelessWidget {
  final String logoUrl;
  final String companyName;
  final String? description; // Make description optional

  const CompanyDetailsPage({
    Key? key,
    required this.logoUrl,
    required this.companyName,
    this.description, // Include the description here
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(companyName),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(logoUrl, height: 100, width: 100),
            const SizedBox(height: 16),
            Text(
              companyName,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            if (description != null) ...[
              const SizedBox(height: 16),
              Text(
                description!,
                style: const TextStyle(fontSize: 16), // Display the description if available
                textAlign: TextAlign.center,
              ),
            ],
            // Additional company details can be added here
          ],
        ),
      ),
    );
  }
}
