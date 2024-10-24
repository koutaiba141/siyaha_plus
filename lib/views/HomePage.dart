import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:siyaha_plus_mobile/views/LocalTourPage.dart';
import 'package:siyaha_plus_mobile/views/SuggestedPage.dart';
import 'package:siyaha_plus_mobile/views/TravelTourPage.dart';
import 'package:siyaha_plus_mobile/mock_data/localTourMockData.dart'; // Import your mock data

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          elevation: 0, // Flat design
          title: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 5,
                  ),
                ],
              ),
              child: Row(
                children: [
                  const Icon(Icons.search, color: Colors.grey),
                  const SizedBox(width: 8),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Where are you going?",
                        hintStyle: const TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                          fontFamily: "Caveat",
                        ),
                        border: InputBorder.none,
                      ),
                      onSubmitted: (value) {
                        // Implement search functionality
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.filter_alt_rounded, color: Colors.white),
              onPressed: () {
                // Implement filter functionality here
              },
            ),
            const SizedBox(width: 8),
          ],
          bottom: const PreferredSize(
            preferredSize: Size.fromHeight(70.0), // Adjust height
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: TabBar(
                tabs: [
                  Tab(
                    icon: Icon(Icons.flight, size: 24),
                    text: "Travel Tour",
                  ),
                  Tab(
                    icon: Icon(Icons.location_pin, size: 24),
                    text: "Local Tour",
                  ),
                  Tab(
                    icon: Icon(Icons.star, size: 24),
                    text: "Suggested",
                  ),
                ],
                indicatorWeight: 4,
                indicatorColor: Colors.white,
                labelColor: Colors.white,
                unselectedLabelColor: Colors.black54,
                labelStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                unselectedLabelStyle: TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
          ),
        ),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.white, Color(0xFFF0F4F8)], // Soft gradient
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TabBarView(
              children: [
                const TravelTourPage(travelTours: []), // Pass mock data here if available
                LocalTourPage(localTours: mockLocalTours), // Pass mock data here
                const SuggestedPage(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
