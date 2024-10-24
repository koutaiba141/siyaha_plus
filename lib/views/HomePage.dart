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
          backgroundColor: Colors.blue,
          title: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Container(
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
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Where are you going?",
                  hintStyle: const TextStyle(
                    color: Colors.grey,
                    fontFamily: "Caveat",
                    fontSize: 16,
                  ),
                  border: InputBorder.none,
                  prefixIcon: GestureDetector(
                    child: const Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    onTap: () {
                      // You can implement search functionality here
                    },
                  ),
                ),
              ),
            ),
          ),
          actions: [
            IconButton(
              icon: const Icon(
                Icons.filter_alt,
                color: Colors.white,
              ),
              onPressed: () {
                // You can implement filter functionality here
              },
            )
          ],
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.flight),
                text: "Travel Tour",
              ),
              Tab(
                icon: Icon(Icons.location_pin),
                text: "Local Tour",
              ),
              Tab(
                icon: Icon(Icons.star),
                text: "Suggested",
              ),
            ],
            indicatorWeight: 3,
            indicatorColor: Colors.white,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.black54,
            labelStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            unselectedLabelStyle: TextStyle(fontSize: 14),
          ),
        ),
        body: TabBarView(
          children: [
            const TravelTourPage(travelTours: []), // Pass mock data here if available
            LocalTourPage(localTours: mockLocalTours), // Pass mock data here
            const SuggestedPage(),
          ],
        ),
      ),
    );
  }
}
