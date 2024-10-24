import 'package:flutter/material.dart';
import 'package:siyaha_plus_mobile/models/localTourModel.dart';
import 'package:siyaha_plus_mobile/views/CompanyDetailsPage.dart';

class LocalTourDetailsPage extends StatelessWidget {
  final LocalTour tour;

  const LocalTourDetailsPage({super.key, required this.tour});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(tour.companyName),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                tour.imageUrl,
                width: double.infinity,
                height: 250,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) => Icon(
                  Icons.image,
                  size: 250,
                  color: Colors.grey.shade300,
                ),
              ),
            ),
            const SizedBox(height: 16),
            Text(
              tour.companyName,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              '\$${tour.price.toStringAsFixed(2)}',
              style: const TextStyle(
                fontSize: 20,
                color: Colors.green,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Tour Description',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              tour.description,
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 16),
            // Company profile section
            Row(
              children: [
                ClipOval(
                  child: Image.network(
                    tour.companyProfilePicUrl, // Dynamic profile picture
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) => Icon(
                      Icons.account_circle,
                      size: 50,
                      color: Colors.grey,
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                GestureDetector(
                  onTap: () {
                    // Navigate to Company Details Page
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CompanyDetailsPage(
                        companyName: tour.companyName,
                        logoUrl: tour.companyLogoUrl,
                        description: tour.description, // Pass the description
                      )),
                    );
                  },
                  child: Text(
                    tour.companyName,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            // Company logo
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                tour.companyLogoUrl, // Dynamic company logo
                width: double.infinity,
                height: 100,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) => Icon(
                  Icons.image,
                  size: 100,
                  color: Colors.grey.shade300,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
