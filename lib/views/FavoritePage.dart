import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:siyaha_plus_mobile/Controllers/ThemeController.dart';
import 'package:siyaha_plus_mobile/services/api_service.dart';

class FavoritePage extends StatefulWidget {
  @override
  _FavoritePageState createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  late Future<List<int>> _favorites;
  List<int> _favoriteIds = [];

  @override
  void initState() {
    super.initState();
    _favorites = _fetchFavorites();
  }

  Future<List<int>> _fetchFavorites() async {
    try {
      int userId = 1; // Replace with actual user ID from your authentication logic
      final favorites = await ApiService.getFavorites(userId.toString());  // Ensure userId is a string
      setState(() {
        _favoriteIds = favorites.cast<int>() ?? [];
      });
      return _favoriteIds;
    } catch (e) {
      print('Error fetching favorites: $e');
      return [];
    }
  }

  Future<void> _toggleFavorite(int tourId) async {
    int userId = 1; // Replace with actual user ID from your authentication logic
    if (_isFavorite(tourId)) {
      await ApiService.removeFavorite(userId.toString(), tourId.toString());
      setState(() {
        _favoriteIds.remove(tourId);
        _favorites = Future.value(_favoriteIds); // Update Future
      });
    } else {
      await ApiService.addFavorite(userId.toString(), tourId.toString());
      setState(() {
        _favoriteIds.add(tourId);
        _favorites = Future.value(_favoriteIds); // Update Future
      });
    }
  }

  bool _isFavorite(int tourId) {
    return _favoriteIds.contains(tourId);
  }

  @override
  Widget build(BuildContext context) {
    final themeController = Get.find<ThemeController>();  // Access the ThemeController

    return Scaffold(
      appBar: AppBar(
        title: Text('Favorites'),
        backgroundColor: themeController.isDarkMode.value ? Colors.grey[800] : Colors.blue,
      ),
      body: FutureBuilder<List<int>>(
        future: _favorites,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }

          if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(child: Text('No favorites found.'));
          }

          return ListView.builder(
            itemCount: snapshot.data!.length,
            itemBuilder: (context, index) {
              final tourId = snapshot.data![index];
              return ListTile(
                title: Text('Tour $tourId'), // Replace with actual tour details
                trailing: IconButton(
                  icon: Icon(
                    Icons.favorite,
                    color: themeController.isDarkMode.value ? Colors.redAccent : Colors.red,
                  ),
                  onPressed: () => _toggleFavorite(tourId),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
