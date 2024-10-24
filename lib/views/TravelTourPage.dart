// lib/views/travelTourPage.dart

import 'package:flutter/material.dart';
import '../models/travelTourModel.dart';
// Import mock data
import 'TravelTourDetailsPage.dart'; // Import the details page

class TravelTourPage extends StatelessWidget {
  final List<TravelTour> travelTours;

  const TravelTourPage({super.key, required this.travelTours});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: travelTours.isEmpty
          ? const Center(child: Text('No tours available'))
          : GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.7,
              ),
              itemCount: travelTours.length,
              padding: const EdgeInsets.all(8),
              itemBuilder: (context, index) {
                final tour = travelTours[index];

                return GestureDetector(
                  onTap: () {
                    // Navigate to details page
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TravelTourDetailsPage(tour: tour),
                      ),
                    );
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
                        ClipRRect(
                          borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
                          child: Image.network(
                            tour.imageUrl,
                            height: 120,
                            width: double.infinity,
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) =>
                                const Icon(Icons.image, size: 80, color: Colors.grey),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                tour.companyName,
                                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                              const SizedBox(height: 4),
                              Text(tour.description),
                              const SizedBox(height: 4),
                              Text('Price: \$${tour.price.toStringAsFixed(2)}', style: const TextStyle(color: Colors.green)),
                              if (tour.duration != null) 
                                Text('Duration: ${tour.duration} days'),
                              Text('Location: ${tour.location}'),
                              Text('Available Dates: ${tour.availableDates.join(', ')}'),
                            ],
                          ),
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              CircleAvatar(
                                backgroundImage: NetworkImage(tour.companyLogoUrl),
                                radius: 20,
                              ),
                              const SizedBox(width: 8),
                              Text(tour.companyName),
                            ],
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
