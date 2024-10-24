class LocalTour {
  final String companyName;
  final String description;
  final String imageUrl;
  final double price;
  final int? duration; // Make it nullable
  final String location;
  final List<String> availableDates;
  final List<String> highlights;
  final String companyLogoUrl; // Add company logo URL
  final String companyProfilePicUrl; // Add company profile picture URL

  LocalTour({
    required this.companyName,
    required this.description,
    required this.imageUrl,
    required this.price,
    this.duration, // Optional now
    required this.location,
    required this.availableDates,
    required this.highlights,
    required this.companyLogoUrl, // Add constructor parameter
    required this.companyProfilePicUrl, // Add constructor parameter
  });
}
List<LocalTour> localTours = [
  LocalTour(
    companyName: 'Company A',
    description: 'This is a tour description for Company A',
    imageUrl: 'https://picsum.photos/200/300',
    price: 100.0,
    duration: 5,
    location: 'New York',
    availableDates: ['2023-03-01', '2023-03-02', '2023-03-03'],
    highlights: ['Highlight 1', 'Highlight 2', 'Highlight 3'],
    companyLogoUrl: 'https://picsum.photos/50/50',
    companyProfilePicUrl: 'https://picsum.photos/100/100',
  ),
  LocalTour(
    companyName: 'Company B',
    description: 'This is a tour description for Company B',
    imageUrl: 'https://picsum.photos/200/301',
    price: 150.0,
    duration: null, // No duration specified
    location: 'Los Angeles',
    availableDates: ['2023-04-01', '2023-04-02', '2023-04-03'],
    highlights: ['Highlight 4', 'Highlight 5', 'Highlight 6'],
    companyLogoUrl: 'https://picsum.photos/50/51',
    companyProfilePicUrl: 'https://picsum.photos/100/101',
  ),
  LocalTour(
    companyName: 'Company C',
    description: 'This is a tour description for Company C',
    imageUrl: 'https://picsum.photos/200/302',
    price: 200.0,
    duration: 7,
    location: 'Chicago',
    availableDates: ['2023-05-01', '2023-05-02', '2023-05-03'],
    highlights: ['Highlight 7', 'Highlight 8', 'Highlight 9'],
    companyLogoUrl: 'https://picsum.photos/50/52',
    companyProfilePicUrl: 'https://picsum.photos/100/102',
  ),
  LocalTour(
    companyName: 'Company D',
    description: 'This is a tour description for Company D',
    imageUrl: 'https://picsum.photos/200/303',
    price: 250.0,
    duration: 8,
    location: 'Houston',
    availableDates: ['2023-06-01', '2023-06-02', '2023-06-03'],
    highlights: ['Highlight 10', 'Highlight 11', 'Highlight 12'],
    companyLogoUrl: 'https://picsum.photos/50/53',
    companyProfilePicUrl: 'https://picsum.photos/100/103',
  ),
  LocalTour(
    companyName: 'Company E',
    description: 'This is a tour description for Company E',
    imageUrl: 'https://picsum.photos/200/304',
    price: 300.0,
    duration: 9,
    location: 'Phoenix',
    availableDates: ['2023-07-01', '2023-07-02', '2023-07-03'],
    highlights: ['Highlight 13', 'Highlight 14', 'Highlight 15'],
    companyLogoUrl: 'https://picsum.photos/50/54',
    companyProfilePicUrl: 'https://picsum.photos/100/104',
  ),
];