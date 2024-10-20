// ignore_for_file: file_names, non_constant_identifier_names

class SuggestedLikeModel {
  String Country;
  int Likes;

  SuggestedLikeModel({required this.Country, required this.Likes});

  factory SuggestedLikeModel.fromJson(Map<String, dynamic> json) {
    return SuggestedLikeModel(
      Country: json['Country'],
      Likes: json['Likes'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'Country': Country,
      'Likes': Likes,
    };
  }
}
