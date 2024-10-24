import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:siyaha_plus_mobile/controllers/FavoriteController.dart';

class FavoritePage extends StatelessWidget {
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
            final companyName = favoriteController.favoriteCompanies[index];

            return ListTile(
              title: Text(companyName),
              trailing: IconButton(
                icon: const Icon(Icons.delete, color: Colors.red),
                onPressed: () {
                  favoriteController.removeFavorite(companyName);
                  Get.snackbar(
                    'Removed from Favorites',
                    '$companyName has been removed from your favorites.',
                    snackPosition: SnackPosition.BOTTOM,
                  );
                },
              ),
            );
          },
        );
      }),
    );
  }
}
