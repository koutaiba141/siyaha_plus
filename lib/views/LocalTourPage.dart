import 'package:flutter/material.dart';
import 'package:siyaha_plus_mobile/models/localTourModel.dart';
import 'package:siyaha_plus_mobile/views/LocalTourDetailsPage.dart';

class LocalTourPage extends StatelessWidget {
  final List<LocalTour> localTours;

  LocalTourPage({super.key, required this.localTours}) {
    // Debugging print statement
    print("LocalTourPage initialized with ${localTours.length} tours");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: localTours.isEmpty
          ? const Center(child: Text('No tours available'))
          : ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: localTours.length,
              itemBuilder: (context, index) {
                final tour = localTours[index];

                return GestureDetector(
                  onTap: () {
                    // Navigate to details page
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LocalTourDetailsPage(tour: tour)),
                    );
                  },
                  child: Card(
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    elevation: 8, // Increased elevation for better shadow
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16), // Rounded corners
                    ),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.horizontal(left: Radius.circular(16)),
                          child: Image.network(
                            tour.imageUrl,
                            height: 120,
                            width: 120,
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) =>
                                const Icon(Icons.image, size: 80, color: Colors.grey),
                          ),
                        ),
                        const SizedBox(width: 12), // Increased spacing
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(12.0), // Increased padding
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  tour.tourName, // Display the tour name
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18, // Increased font size
                                  ),
                                ),
                                const SizedBox(height: 6),
                                Row(
                                  children: [
                                    const Icon(Icons.attach_money, color: Colors.green),
                                    const SizedBox(width: 4),
                                    Text(
                                      '\$${tour.price.toStringAsFixed(2)}', // Display the price
                                      style: const TextStyle(color: Colors.green, fontSize: 16),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 6),
                                Row(
                                  children: [
                                    const Icon(Icons.location_on, color: Colors.red),
                                    const SizedBox(width: 4),
                                    Text('Location: ${tour.location}'), // Display the location
                                  ],
                                ),
                                const SizedBox(height: 6),
                                Text(
                                  'Company: ${tour.companyName}', // Display the company name
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(tour.companyLogoUrl),
                            radius: 24, // Increased radius for better visibility
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