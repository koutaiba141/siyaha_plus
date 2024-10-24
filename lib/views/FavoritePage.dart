import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:siyaha_plus_mobile/controllers/FavoriteController.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    final FavoriteController favoriteController = Get.find();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Favorite Page"),
        backgroundColor: Colors.blue,
      ),
      body: Obx(() {
        if (favoriteController.favoriteCompanies.isEmpty) {
          return const Center(
            child: Text(
              "No favorites yet.",
              style: TextStyle(fontSize: 18),
            ),
          );
        }

        return ListView.builder(
          itemCount: favoriteController.favoriteCompanies.length,
          itemBuilder: (context, index) {
            final company = favoriteController.favoriteCompanies[index];
            final companyName = company['name'];
            final logoUrl = company['logo'];

            return ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(logoUrl!),
                radius: 24,
                onBackgroundImageError: (error, stackTrace) => const Icon(Icons.error),
              ),
              title: Text(companyName ?? "Unknown Company"), // Handle nullable companyName
              trailing: IconButton(
                icon: const Icon(Icons.delete, color: Colors.red),
                onPressed: () {
                  if (companyName != null) { // Ensure companyName is not null
                    favoriteController.removeFavorite(companyName);
                    Get.snackbar(
                      'Removed from Favorites',
                      '$companyName has been removed from your favorites.',
                      snackPosition: SnackPosition.BOTTOM,
                    );
                  }
                },
              ),
            );
          },
        );
      }),
    );
  }
}