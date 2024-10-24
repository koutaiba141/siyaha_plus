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
        elevation: 0,
      ),
      body: Container(
        color: Colors.white, // Simple background color
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Larger Tour Image with full width and height adjustment
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  tour.imageUrl,
                  height: 300, // Increased height for more impact
                  width: double.infinity,
                  fit: BoxFit.cover, // Make sure the image covers the width and height proportionally
                  errorBuilder: (context, error, stackTrace) =>
                      const Icon(Icons.image, size: 120, color: Colors.grey),
                ),
              ),
              const SizedBox(height: 16),

              // Tour Name
              Text(
                tour.tourName,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 8),

              // Price
              Row(
                children: [
                  const Icon(Icons.attach_money, color: Colors.green, size: 20),
                  const SizedBox(width: 4),
                  Text(
                    '\$${tour.price.toStringAsFixed(2)}',
                    style: const TextStyle(
                      color: Colors.green,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),

              // Location
              Row(
                children: [
                  const Icon(Icons.location_on, color: Colors.red, size: 20),
                  const SizedBox(width: 4),
                  Expanded(
                    child: Text(
                      'Location: ${tour.location}',
                      style: const TextStyle(fontSize: 16, color: Colors.black87),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),

              // Company Info: Logo, Name, and Navigate to Profile
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                elevation: 4,
                child: ListTile(
                  contentPadding: const EdgeInsets.all(12),
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
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(tour.companyProfilePicUrl),
                    radius: 32,
                    backgroundColor: Colors.transparent,
                    onBackgroundImageError: (error, stackTrace) =>
                        const Icon(Icons.error, size: 32),
                  ),
                  title: Text(
                    tour.companyName,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black87,
                    ),
                  ),
                  subtitle: const Text(
                    'View Profile',
                    style: TextStyle(color: Colors.blue),
                  ),
                  trailing: const Icon(Icons.chevron_right, color: Colors.grey),
                ),
              ),
              const SizedBox(height: 16),

              // Available Plans Section
              Text(
                'Available Plans',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: Colors.black87,
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
                              color: Colors.black87,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Row(
                            children: [
                              const Icon(Icons.schedule, color: Colors.blue, size: 20),
                              const SizedBox(width: 8),
                              Text(
                                'Duration: ${plan.duration ?? "N/A"} hours',
                                style: const TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          Row(
                            children: [
                              const Icon(Icons.attach_money, color: Colors.green, size: 20),
                              const SizedBox(width: 8),
                              Text(
                                'Price: \$${plan.price.toStringAsFixed(2)}',
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Colors.green,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'Description: ${plan.description}',
                            style: const TextStyle(fontSize: 16, color: Colors.black87),
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
      ),
    );
  }
}
