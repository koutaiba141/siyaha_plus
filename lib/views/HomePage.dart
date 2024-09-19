import 'package:flutter/material.dart';
import 'package:siyaha_plus_mobile/views/LocalTour.dart';
import 'package:siyaha_plus_mobile/views/Suggested.dart';
import 'package:siyaha_plus_mobile/views/TravelTour.dart';
import 'package:siyaha_plus_mobile/views/FavoritePage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String searchQuery = "";
  List<String> recentSearches = []; // Stores recent searches
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _loadRecentSearches();
    _searchController.addListener(() {
      setState(() {
        searchQuery = _searchController.text;
        if (searchQuery.isNotEmpty && !recentSearches.contains(searchQuery)) {
          recentSearches.add(searchQuery);
          _saveRecentSearches();
        }
      });
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  Future<void> _saveRecentSearches() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setStringList('recentSearches', recentSearches);
  }

  Future<void> _loadRecentSearches() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      recentSearches = prefs.getStringList('recentSearches') ?? [];
    });
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.blue,
      title: Column(
        children: [
          TextField(
            controller: _searchController,
            decoration: InputDecoration(
              hintText: "Where are you going",
              hintStyle: TextStyle(color: Colors.grey, fontFamily: "Caveat"),
              border: InputBorder.none,
              prefixIcon: const Icon(Icons.search, color: Colors.grey),
              suffixIcon: searchQuery.isNotEmpty
                ? IconButton(
                    icon: Icon(Icons.clear, color: Colors.grey),
                    onPressed: () {
                      _searchController.clear();
                      setState(() {
                        searchQuery = "";
                      });
                    },
                  )
                : null,
            ),
          ),
          if (searchQuery.isEmpty) _buildRecentSearches(), // Add recent searches here
        ],
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.filter_alt, color: Colors.white),
          onPressed: () {
            // Add filter action
          },
        ),
      ],
      bottom: _buildTabBar(),
    );
  }

  Widget _buildRecentSearches() {
    return Column(
      children: recentSearches.map((search) => ListTile(
        title: Text(search),
        onTap: () {
          setState(() {
            searchQuery = search;
            _searchController.text = search;
          });
        },
      )).toList(),
    );
  }

  PreferredSizeWidget _buildTabBar() {
    return TabBar(
      tabs: [
        Tab(icon: Icon(Icons.flight), text: "Travel Tour"),
        Tab(icon: Icon(Icons.local_activity), text: "Local Tour"),
        Tab(icon: Icon(Icons.recommend), text: "Suggested"),
      ],
      indicatorWeight: 3,
      indicatorColor: Colors.white,
      labelColor: Colors.white,
      unselectedLabelColor: Colors.black,
      labelStyle: const TextStyle(fontSize: 16),
      unselectedLabelStyle: const TextStyle(fontSize: 12),
    );
  }

  Widget _buildTabBarView() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TabBarView(
        children: [
          TravelTour(),
          LocalTour(),
          Suggested(),
        ],
      ),
    );
  }

  Widget _buildDrawer() {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('assets/logo.png'), // Add your logo image here
                ),
                SizedBox(height: 10),
                Text(
                  'Siyaha Plus Mobile',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
          ),
          ListTile(
            title: Text('About Us'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AboutUsPage()),
              );
            },
          ),
          ListTile(
            title: Text('Contact Us'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ContactUsPage()),
              );
            },
          ),
          ListTile(
            title: Text('Rate Us'),
            onTap: () {
              // Implement rating logic here
            },
          ),
          ListTile(
            title: Text('Search History'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SearchHistoryPage(recentSearches: recentSearches)),
              );
            },
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Column(
          children: [
            Expanded(child: _buildTabBarView()),
          ],
        ),
        drawer: _buildDrawer(),
      ),
    );
  }
}

// Dummy page for About Us
class AboutUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('About Us')),
      body: Center(child: Text('Information about the company goes here.')),
    );
  }
}

// Dummy page for Contact Us
class ContactUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Contact Us')),
      body: Center(child: Text('Contact details go here.')),
    );
  }
}

// Page for Search History
class SearchHistoryPage extends StatelessWidget {
  final List<String> recentSearches;

  SearchHistoryPage({required this.recentSearches});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Search History')),
      body: ListView.builder(
        itemCount: recentSearches.length,
        itemBuilder: (context, index) {
          final search = recentSearches[index];
          return ListTile(
            title: Text(search),
            onTap: () {
              // Implement search logic if needed
            },
          );
        },
      ),
    );
  }
}
