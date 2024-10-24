import 'package:get/get.dart';

class FavoriteController extends GetxController {
  // Observable list of favorite companies with logos
  var favoriteCompanies = <Map<String, String>>[].obs;

void addFavorite(String companyName, String? logoUrl) {
  if (logoUrl != null && !favoriteCompanies.any((company) => company['name'] == companyName)) {
    favoriteCompanies.add({'name': companyName, 'logo': logoUrl});
  }
}
  // Method to remove a company from favorites
  void removeFavorite(String companyName) {
    favoriteCompanies.removeWhere((company) => company['name'] == companyName);
  }

  // Method to check if a company is already in favorites
  bool isFavorite(String companyName) {
    return favoriteCompanies.any((company) => company['name'] == companyName);
  }

  // Method to toggle favorite status of a company
  void toggleFavorite(String companyName, String logoUrl) {
    if (isFavorite(companyName)) {
      removeFavorite(companyName);
    } else {
      addFavorite(companyName, logoUrl);
    }
  }
}