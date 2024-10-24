import 'package:flutter/material.dart';

class CompanyTripsPage extends StatefulWidget {
  @override
  _CompanyTripsPageState createState() => _CompanyTripsPageState();
}

class _CompanyTripsPageState extends State<CompanyTripsPage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  // Sample data for trips
  final List<Map<String, dynamic>> trips = [
    {'title': 'Trip to Paris', 'date': DateTime(2024, 10, 12)},
    {'title': 'Trip to Rome', 'date': DateTime(2023, 12, 8)},
    {'title': 'Trip to New York', 'date': DateTime(2024, 11, 15)},
    {'title': 'Trip to Tokyo', 'date': DateTime(2022, 9, 22)},
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Separate current and past trips based on the date
    final currentTrips = trips.where((trip) => trip['date'].isAfter(DateTime.now())).toList();
    final pastTrips = trips.where((trip) => trip['date'].isBefore(DateTime.now())).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text('Company Trips'),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(text: 'Current Trips'),
            Tab(text: 'Past Trips'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          // Current Trips Tab
          buildTripsList(currentTrips, 'No current trips available.'),
          // Past Trips Tab
          buildTripsList(pastTrips, 'No past trips available.'),
        ],
      ),
    );
  }

  // A method to build a list of trips
  Widget buildTripsList(List<Map<String, dynamic>> trips, String emptyMessage) {
    if (trips.isEmpty) {
      return Center(child: Text(emptyMessage));
    }

    return ListView.builder(
      itemCount: trips.length,
      itemBuilder: (context, index) {
        final trip = trips[index];
        return ListTile(
          title: Text(trip['title']),
          subtitle: Text(
            'Date: ${trip['date'].toString().split(' ')[0]}', // Format the date as YYYY-MM -DD
          ),
          onTap: () {
            // Handle trip tap, maybe navigate to a details page
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => TripDetailsPage(trip: trip)),
            );
          },
        );
      },
    );
  }
}

class TripDetailsPage extends StatelessWidget {
  final Map<String, dynamic> trip;

  TripDetailsPage({required this.trip});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(trip['title']),
      ),
      body: Center(
        child: Text('Trip details page'),
      ),
    );
  }
}