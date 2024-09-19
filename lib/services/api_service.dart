import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiService {
  static Future<List<Favorite>> getFavorites(String userId) async {
    final response = await http.get(Uri.parse('https://example.com/api/favorites?userId=$userId'));
    if (response.statusCode == 200) {
      List<dynamic> data = json.decode(response.body);
      return data.map((json) => Favorite.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load favorites');
    }
  }

  static Future<void> removeFavorite(String userId, String favoriteId) async {
    final response = await http.delete(Uri.parse('https://example.com/api/favorites/$favoriteId?userId=$userId'));
    if (response.statusCode != 200) {
      throw Exception('Failed to remove favorite');
    }
  }

  static Future<void> addFavorite(String userId, String favoriteId) async {
    final response = await http.post(
      Uri.parse('https://example.com/api/favorites'),
      body: json.encode({'userId': userId, 'favoriteId': favoriteId}),
      headers: {'Content-Type': 'application/json'},
    );
    if (response.statusCode != 200) {
      throw Exception('Failed to add favorite');
    }
  }
}

class Favorite {
  final String id;
  final String name;

  Favorite({required this.id, required this.name});

  factory Favorite.fromJson(Map<String, dynamic> json) {
    return Favorite(
      id: json['id'],
      name: json['name'],
    );
  }
}
