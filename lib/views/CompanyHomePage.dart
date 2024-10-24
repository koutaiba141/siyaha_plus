import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart'; // To handle SVG files
import 'package:siyaha_plus_mobile/routes/appRoute.dart'; // Correct import

class CompanyHomePage extends StatefulWidget {
  @override
  _CompanyHomePageState createState() => _CompanyHomePageState();
}

class _CompanyHomePageState extends State<CompanyHomePage> {
  static const double textButtonFontSize = 16.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue[400],
        title: const Text(
          'Siyaha Plus',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          icon: const Icon(Icons.notifications, color: Colors.white),
          onPressed: () {
            // Handle notification navigation
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.menu, color: Colors.white),
            onPressed: () {
              // Handle menu navigation
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              _buildMenuCard(
                assetPath: 'assets/icons/CompanyProfile.svg',
                text: 'Profile',
                onTap: () => Get.toNamed(AppRoute.companyProfilePage),
              ),
              const SizedBox(height: 20),

              _buildMenuCard(
                assetPath: 'assets/icons/BusTrip.svg',
                text: 'Trips',
                onTap: () => Get.toNamed(AppRoute.companyTripsPage),
              ),
              const SizedBox(height: 20),

              _buildMenuCard(
                assetPath: 'assets/icons/statistics.svg',
                text: 'Statistics',
                onTap: () => Get.toNamed(AppRoute.statisticsPage),
              ),
              const SizedBox(height: 40),

              Divider(thickness: 1, color: Colors.grey[400]),
              const SizedBox(height: 20),

              ElevatedButton.icon(
                onPressed: () => Get.toNamed(AppRoute.addTripPage),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightBlue[400],
                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                icon: const Icon(Icons.add, color: Colors.white),
                label: const Text(
                  'Add Trip',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: textButtonFontSize,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMenuCard({
    required String assetPath,
    required String text,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              SvgPicture.asset(
                assetPath,
                height: 40,
                placeholderBuilder: (context) =>
                    const CircularProgressIndicator(), // Better fallback
              ),
              const SizedBox(height: 10),
              Text(
                text,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: textButtonFontSize,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
