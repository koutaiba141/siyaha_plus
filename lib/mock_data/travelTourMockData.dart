// lib/mock_data/travelTourMockData.dart

import '../models/travelTourModel.dart';

final List<TravelTour> mockTravelTours = [
  TravelTour(
    companyName: "Globetrotters",
    description: "Explore the world with our curated tours!",
    imageUrl: "https://example.com/travel_image1.jpg",
    price: 1500.00,
    duration: 7,
    location: "Paris, France",
    availableDates: ["2024-12-01", "2024-12-15", "2024-12-20"],
    highlights: ["Eiffel Tower", "Louvre Museum", "Seine River Cruise"],
    companyLogoUrl: "https://example.com/travel_logo1.jpg",
  ),
  // Add more mock travel tours as needed
];
