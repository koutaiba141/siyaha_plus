

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:siyaha_plus_mobile/controllers/FavoriteController.dart';

class CompanyDetailsPage extends StatelessWidget {
  final String companyName;
  final String logoUrl;
  final String description;

  const CompanyDetailsPage({
    super.key,
    required this.companyName,
    required this.logoUrl,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    final FavoriteController favoriteController = Get.find();

    return Scaffold(
      appBar: AppBar(
        title: Text(companyName),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Company logo
              ClipOval(
                child: Image.network(
                  logoUrl,
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) => Icon(
                    Icons.error,
                    size: 100,
                    color: Colors.grey.shade300,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              // Company name
              Text(
                companyName,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              // Company description
              const Text(
                'Company Description',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                description,
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 16),
              // Add to favorites button
              ElevatedButton(
                onPressed: () {
                  favoriteController.addFavorite(companyName,logoUrl);
                  Get.snackbar(
                    'Added to Favorites',
                    '$companyName has been added to your favorites.',
                    snackPosition: SnackPosition.BOTTOM,
                  );
                },
                child: const Text('Add to Favorites'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
