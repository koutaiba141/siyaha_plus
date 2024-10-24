import 'package:flutter/material.dart';
import 'package:siyaha_plus_mobile/models/localTourModel.dart';
import 'package:siyaha_plus_mobile/views/CompanyDetailsPage.dart'; // Import the company profile page

class LocalTourDetailsPage extends StatelessWidget {
  final LocalTour tour;

  const LocalTourDetailsPage({super.key, required this.tour});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(tour.tourName),
        backgroundColor: Colors.blueAccent,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Tour Image
            Image.network(
              tour.imageUrl,
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) =>
                  const Icon(Icons.image, size: 120, color: Colors.grey),
            ),
            const SizedBox(height: 16),
            // Tour Name
            Text(
              tour.tourName,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            const SizedBox(height: 8),
            // Price
            Row(
              children: [
                const Icon(Icons.attach_money, color: Colors.green),
                const SizedBox(width: 4),
                Text(
                  '\$${tour.price.toStringAsFixed(2)}',
                  style: const TextStyle(color: Colors.green, fontSize: 18),
                ),
              ],
            ),
            const SizedBox(height: 8),
            // Location
            Row(
              children: [
                const Icon(Icons.location_on, color: Colors.red),
                const SizedBox(width: 4),
                Text('Location: ${tour.location}'),
              ],
            ),
            const SizedBox(height: 16),

            // Company Info: Logo, Name, and Navigate to Profile
            GestureDetector(
              onTap: () {
                // Navigate to the company profile page
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CompanyDetailsPage(
                      logoUrl: tour.companyLogoUrl, // Provide the required parameter
                      companyName: tour.companyName,
                      // Optionally pass other parameters if needed
                    ),
                  ),
                );
              },
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(tour.companyProfilePicUrl),
                    radius: 32,
                    backgroundColor: Colors.transparent,
                    onBackgroundImageError: (error, stackTrace) {
                      // Handle the error without returning anything
                    },
                  ),
                  const SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        tour.companyName,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      const Text(
                        'View Profile',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),

            // Add to Favorites Button
            Center(
              child: ElevatedButton.icon(
                onPressed: () {
                  _addToFavorites(context, tour.companyName); // Pass context here
                },
                icon: const Icon(Icons.favorite, color: Colors.red),
                label: const Text('Add to Favorites'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                ),
              ),
            ),
            const SizedBox(height: 16),

            // Available Plans Section
            Text(
              'Available Plans',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
            const SizedBox(height: 8),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: tour.plans.length,
              itemBuilder: (context, index) {
                final plan = tour.plans[index];
                return Card(
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          plan.planName,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            const Icon(Icons.schedule, color: Colors.blue),
                            const SizedBox(width: 8),
                            Text('Duration: ${plan.duration ?? "N/A"} hours'),
                          ],
                        ),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            const Icon(Icons.attach_money, color: Colors.green),
                            const SizedBox(width: 8),
                            Text('Price: \$${plan.price.toStringAsFixed(2)}'),
                          ],
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Description: ${plan.description}',
                          style: const TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  // Simulate adding the company to the user's favorites
  void _addToFavorites(BuildContext context, String companyName) {
    // Show a snackbar or perform an API request to add the company to favorites
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("$companyName added to favorites!")),
    );
  }
}
