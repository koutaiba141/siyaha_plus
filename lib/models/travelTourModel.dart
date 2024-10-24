// lib/models/travelTourModel.dart

class TravelTour {
  final String companyName;
  final String description;
  final String imageUrl;
  final double price;
  final int? duration; // Make it nullable
  final String location;
  final List<String> availableDates;
  final List<String> highlights;
  final String companyLogoUrl; // Add company logo URL

  TravelTour({
    required this.companyName,
    required this.description,
    required this.imageUrl,
    required this.price,
    this.duration,
    required this.location,
    required this.availableDates,
    required this.highlights,
    required this.companyLogoUrl, // Add constructor parameter
  });
}
