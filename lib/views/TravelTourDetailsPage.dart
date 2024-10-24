// lib/views/TravelTourDetailsPage.dart

import 'package:flutter/material.dart';
import '../models/travelTourModel.dart';

class TravelTourDetailsPage extends StatelessWidget {
  final TravelTour tour;

  const TravelTourDetailsPage({super.key, required this.tour});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(tour.companyName),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(tour.imageUrl),
            const SizedBox(height: 8),
            Text(tour.description, style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 8),
            Text('Price: \$${tour.price.toStringAsFixed(2)}'),
            Text('Duration: ${tour.duration ?? "N/A"} days'),
            Text('Location: ${tour.location}'),
            Text('Available Dates: ${tour.availableDates.join(', ')}'),
            // You can add more details or highlights here if needed
          ],
        ),
      ),
    );
  }
}
