// ignore_for_file: file_names, non_constant_identifier_names
import 'dart:typed_data';

class SuggestedModel {
  final Uint8List Image;
  final String Name;
  final String Type;
  final String Description;

  SuggestedModel({
    required this.Image,
    required this.Name,
    required this.Type,
    required this.Description,
  });

  factory SuggestedModel.fromJson(Map<String, dynamic> json) {
    return SuggestedModel(
      Image: Uint8List.fromList(List<int>.from(json['Image'])),
      Name: json['Name'],
      Type: json['Type'],
      Description: json['Description'],
    );
  }
}
