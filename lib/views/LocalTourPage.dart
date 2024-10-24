import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:siyaha_plus_mobile/models/localTourModel.dart';
import 'package:siyaha_plus_mobile/views/LocalTourDetailsPage.dart';
import 'package:siyaha_plus_mobile/controllers/FavoriteController.dart';

class LocalTourPage extends StatelessWidget {
  const LocalTourPage({super.key});

  @override
  Widget build(BuildContext context) {
    final FavoriteController favoriteController = Get.find();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Local Tours'),
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite),
            onPressed: () {
              Get.toNamed('/favorite'); // Navigate to FavoritePage
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: localTours.length,
        padding: const EdgeInsets.all(8),
        itemBuilder: (context, index) {
          final tour = localTours[index];

          return Card(
            margin: const EdgeInsets.symmetric(vertical: 8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  tour.imageUrl,
                  width: 80,
                  height: 80,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) => Icon(
                    Icons.image,
                    size: 80,
                    color: Colors.grey.shade300,
                  ),
                ),
              ),
              title: Text(
                tour.companyName,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text('\$${tour.price.toStringAsFixed(2)}'),
              trailing: IconButton(
                icon: const Icon(Icons.favorite_border),
                onPressed: () {
                  favoriteController.addFavorite(tour.companyName);
                  Get.snackbar(
                    'Added to Favorites',
                    '${tour.companyName} has been added to your favorites.',
                    snackPosition: SnackPosition.BOTTOM,
                  );
                },
              ),
              onTap: () {
                // Navigate to Tour Details with tour data
                Get.to(() => LocalTourDetailsPage(tour: tour));
              },
            ),
          );
        },
      ),
    );
  }
}
