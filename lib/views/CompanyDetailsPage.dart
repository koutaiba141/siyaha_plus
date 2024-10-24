import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:siyaha_plus_mobile/controllers/FavoriteController.dart';

class CompanyDetailsPage extends StatelessWidget {
  final String logoUrl;
  final String companyName;
  final String? description; // Make description optional

  const CompanyDetailsPage({
    Key? key,
    required this.logoUrl,
    required this.companyName,
    this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final FavoriteController favoriteController = Get.find(); // Get the FavoriteController

    return Scaffold(
      appBar: AppBar(
        title: Text(companyName),
        actions: [
          Obx(() {
            final isFavorite = favoriteController.isFavorite(companyName);
            return IconButton(
              icon: Icon(
                isFavorite ? Icons.favorite : Icons.favorite_border,
                color: isFavorite ? Colors.red : Colors.white,
              ),
              onPressed: () {
                favoriteController.toggleFavorite(companyName, logoUrl);
                Get.snackbar(
                  isFavorite ? 'Removed from Favorites' : 'Added to Favorites',
                  isFavorite
                      ? '$companyName has been removed from your favorites.'
                      : '$companyName has been added to your favorites.',
                  snackPosition: SnackPosition.BOTTOM,
                );
              },
            );
          }),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              logoUrl,
              height: 100,
              width: 100,
              errorBuilder: (context, error, stackTrace) => const Icon(Icons.error),
            ),
            const SizedBox(height: 16),
            Text(
              companyName,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            if (description != null) ...[
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  description!,
                  style: const TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
            // Additional company details can be added here
          ],
        ),
      ),
    );
  }
}
