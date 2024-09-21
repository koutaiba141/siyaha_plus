// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:siyaha_plus_mobile/views/LocalTourPage.dart';
import 'package:siyaha_plus_mobile/views/SuggestedPage.dart';
import 'package:siyaha_plus_mobile/views/TravelTourPage.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Where are you going",
                      hintStyle: const TextStyle(
                          color: Colors.grey, fontFamily: "Caveat"),
                      border: InputBorder.none,
                      prefixIcon: GestureDetector(
                        child: const Icon(
                          Icons.search,
                          color: Colors.grey,
                        ),
                        onTap: () {},
                      )),
                )),
            actions: [
              IconButton(
                icon: const Icon(
                  Icons.filter_alt,
                  color: Colors.white,
                ),
                onPressed: () {},
              )
            ],
            bottom: const TabBar(
              tabs: [
                Tab(text: "Travel tour"),
                Tab(text: "Local tour"),
                Tab(text: "Suggested")
              ],
              indicatorWeight: 3,
              indicatorColor: Colors.white,
              labelColor: Colors.white,
              unselectedLabelColor: Colors.black,
              labelStyle: TextStyle(fontSize: 16),
              unselectedLabelStyle: TextStyle(fontSize: 12),
            ),
          ),
          body: const TabBarView(
            children: [TravelTourPAge(), LocalTourPage(), SuggestedPage()],
          ),
        ));
  }
}
