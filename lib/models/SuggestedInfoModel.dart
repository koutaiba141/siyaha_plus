// ignore_for_file: file_names, non_constant_identifier_names

import 'dart:convert';
import 'dart:typed_data';

class SuggestedInfoModel {
  final Uint8List SuggestedProfile;
  final String SuggestedName;
  final String SuggestedType;
  final String SuggestedNumber;
  final String SuggestedLocation;

  SuggestedInfoModel(
      {required this.SuggestedProfile,
      required this.SuggestedName,
      required this.SuggestedType,
      required this.SuggestedNumber,
      required this.SuggestedLocation});

  Map<String, dynamic> SuggestedInfoToMap() {
    return {
      "SuggestedProfile": SuggestedProfile,
      "SuggestedName": SuggestedName,
      "SuggestedType": SuggestedType,
      "SuggestedNumber": SuggestedNumber,
      "SuggestedLocation": SuggestedLocation,
    };
  }

  String SuggestedInfoToJson() => json.encode(SuggestedInfoToMap());
}
