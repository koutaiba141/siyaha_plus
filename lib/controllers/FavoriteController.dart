import 'package:get/get.dart';

class FavoriteController extends GetxController {
  // Observable list of favorite companies
  var favoriteCompanies = <String>[].obs;

  // Method to add a company to favorites
  void addFavorite(String companyName) {
    if (!favoriteCompanies.contains(companyName)) {
      favoriteCompanies.add(companyName);
    }
  }

  // Method to remove a company from favorites
  void removeFavorite(String companyName) {
    favoriteCompanies.remove(companyName);
  }

  // Method to check if a company is already in favorites
  bool isFavorite(String companyName) {
    return favoriteCompanies.contains(companyName);
  }

  // Method to toggle favorite status of a company
  void toggleFavorite(String companyName) {
    if (isFavorite(companyName)) {
      removeFavorite(companyName);
    } else {
      addFavorite(companyName);
    }
  }
}