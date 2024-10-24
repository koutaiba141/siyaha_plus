// models/localTourModel.dart

class TourPlan {
  final String planName;
  final double price;
  final int? duration; // Nullable, if duration is optional
  final String description;
  
  TourPlan({
    required this.planName,
    required this.price,
    this.duration,
    required this.description,
  });
}

class LocalTour {
  final String tourName; // Name of the tour
  final String companyName;
  final String description;
  final String imageUrl;
  final double price; // Default price, can be overridden by individual plans
  final int? duration; // Default duration, can be overridden by individual plans
  final String location;
  final List<String> availableDates;
  final List<String> highlights;
  final String companyLogoUrl;
  final String companyProfilePicUrl;
  final List<TourPlan> plans; // New list of plans for the tour

  LocalTour({
    required this.tourName,
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
    required this.plans, // Initialize the list of plans in the constructor
  });
}
