class LocalTour {
  final String companyName;
  final String description;
  final String imageUrl;
  final double price;

  LocalTour({
    required this.companyName,
    required this.description,
    required this.imageUrl,
    required this.price,
  });
}

// Sample list of tours (Mock Data)
final List<LocalTour> localTours = [
  LocalTour(
    companyName: 'Mountain Adventures',
    description: 'Explore scenic mountains with our guided tours.',
    imageUrl: 'https://via.placeholder.com/150',
    price: 120.0,
  ),
  LocalTour(
    companyName: 'City Walks',
    description: 'Discover the city on foot with our walking tours.',
    imageUrl: 'https://via.placeholder.com/150',
    price: 45.0,
  ),
  LocalTour(
    companyName: 'Island Escapes',
    description: 'Enjoy tropical beaches with our all-inclusive packages.',
    imageUrl: 'https://via.placeholder.com/150',
    price: 300.0,
  ),
];
