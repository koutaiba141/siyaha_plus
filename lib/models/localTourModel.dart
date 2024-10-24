// models/localTourModel.dart

class LocalTour {
  final String tourName; // New property for the tour name
  final String companyName;
  final String description;
  final String imageUrl;
  final double price;
  final int? duration; // Make it nullable
  final String location;
  final List<String> availableDates;
  final List<String> highlights;
  final String companyLogoUrl; 
  final String companyProfilePicUrl; 

  LocalTour({
    required this.tourName, // Include tourName in the constructor
    required this.companyName,
    required this.description,
    required this.imageUrl,
    required this.price,
    this.duration,
    required this.location,
    required this.availableDates,
    required this.highlights,
    required this.companyLogoUrl,
    required this.companyProfilePicUrl,
  });
}
