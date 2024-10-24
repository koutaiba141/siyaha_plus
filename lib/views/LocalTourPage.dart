import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:siyaha_plus_mobile/models/localTourModel.dart';
import 'package:siyaha_plus_mobile/views/LocalTourDetailsPage.dart';
import 'package:siyaha_plus_mobile/controllers/FavoriteController.dart';

class LocalTourPage extends StatelessWidget {
  final List<LocalTour> localTours;

  const LocalTourPage({Key? key, required this.localTours}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final FavoriteController favoriteController = Get.find();

    return Scaffold(
      body: localTours.isEmpty
          ? Center(
              child: Text('No tours available'),
            )
          : GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.7,
              ),
              itemCount: localTours.length,
              padding: const EdgeInsets.all(8),
              itemBuilder: (context, index) {
                final tour = localTours[index];

                return GestureDetector(
                  onTap: () {
                    Get.to(() => LocalTourDetailsPage(tour: tour));
                  },
                  child: Card(
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Hero(
                          tag: tour.imageUrl,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.network(
                              tour.imageUrl,
                              height: 120,
                              width: double.infinity,
                              fit: BoxFit.cover,
                              errorBuilder: (context, error, stackTrace) => Icon(
                                Icons.image,
                                size: 80,
                                color: Colors.grey.shade300,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            tour.companyName,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('\$${tour.price.toStringAsFixed(2)}'),
                              Text('Duration: ${tour.duration} hours'),
                            ],
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Obx(
                            () => IconButton(
                              icon: favoriteController.isFavorite(tour.companyName)
                                  ? const Icon(Icons.favorite)
                                  : const Icon(Icons.favorite_border),
                              onPressed: () {
                                if (!favoriteController.isFavorite(tour.companyName)) {
                                  favoriteController.addFavorite(tour.companyName);
                                  Get.snackbar(
                                    'Added to Favorites',
                                    '${tour.companyName} has been added to your favorites.',
                                    snackPosition: SnackPosition.BOTTOM,
                                  );
                                } else {
                                  favoriteController.removeFavorite(tour.companyName);
                                  Get.snackbar(
                                    'Removed from Favorites',
                                    '${tour.companyName} has been removed from your favorites.',
                                    snackPosition: SnackPosition.BOTTOM,
                                  );
                                }
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
    );
  }
}