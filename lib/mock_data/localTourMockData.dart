import 'package:siyaha_plus_mobile/models/localTourModel.dart';

final List<LocalTour> mockLocalTours = [
  LocalTour(
    tourName: 'City Exploration Tour',
    companyName: 'City Adventures',
    description: 'Explore the heart of the city.',
    imageUrl: 'https://images.unsplash.com/photo-1506748686214-e9df14d4d9d0?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwzNjUyOXwwfDF8c2VhcmNofDEwfHxjaXR5fGVufDB8fHx8MTY4MzE0MDE3Ng&ixlib=rb-4.0.3&q=80&w=400',
    price: 120.0,
    duration: 4,
    location: 'Paris',
    availableDates: ['2024-11-01', '2024-12-01'],
    highlights: ['Eiffel Tower', 'Louvre Museum'],
    companyLogoUrl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/35/Logo_Science_Adventure.svg/512px-Logo_Science_Adventure.svg.png',
    companyProfilePicUrl: 'https://randomuser.me/api/portraits/men/1.jpg',
  ),
  LocalTour(
    tourName: 'Mountain Adventure Tour',
    companyName: 'Mountain Expeditions',
    description: 'A thrilling adventure in the mountains.',
    imageUrl: 'https://images.unsplash.com/photo-1506748686214-10a1e5c4a6a2?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwzNjUyOXwwfDF8c2VhcmNofDJ8fG1vdW50YWluJTIwYWR2ZW50dXJlJTIwdG91c3xlbnwwfHx8fDE2ODMxNDAxNzY&ixlib=rb-4.0.3&q=80&w=400',
    price: 150.0,
    duration: 6,
    location: 'Colorado',
    availableDates: ['2024-11-15', '2024-12-10'],
    highlights: ['Rock Climbing', 'Mountain Trails'],
    companyLogoUrl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/35/Logo_Science_Adventure.svg/512px-Logo_Science_Adventure.svg.png',
    companyProfilePicUrl: 'https://randomuser.me/api/portraits/men/2.jpg',
  ),
  // Add more mock data as needed
];
