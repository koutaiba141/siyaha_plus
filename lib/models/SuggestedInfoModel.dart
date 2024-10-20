// ignore_for_file: file_names, non_constant_identifier_names

import 'dart:convert';
import 'dart:typed_data';

class SuggestedInfoModel {
  final Uint8List SuggestedProfile;
  final String SuggestedName;
  final String SuggestedDescription;
  final String SuggestedType;
  final String SuggestedNumber;
  final String SuggestedLocation;
  final String SuggestedFacebook;
  final String SuggestedInstagram;
  final String SuggestedTiktok;

  SuggestedInfoModel({
    required this.SuggestedProfile,
    required this.SuggestedName,
    required this.SuggestedDescription,
    required this.SuggestedType,
    required this.SuggestedNumber,
    required this.SuggestedLocation,
    required this.SuggestedFacebook,
    required this.SuggestedInstagram,
    required this.SuggestedTiktok,
  });

  Map<String, dynamic> SuggestedInfoToMap() {
    return {
      "SuggestedProfile": SuggestedProfile,
      "SuggestedName": SuggestedName,
      "SuggestedDescription": SuggestedDescription,
      "SuggestedType": SuggestedType,
      "SuggestedNumber": SuggestedNumber,
      "SuggestedLocation": SuggestedLocation,
      "SuggestedFacebook": SuggestedFacebook,
      "SuggestedInstagram": SuggestedInstagram,
      "SuggestedTiktok": SuggestedTiktok
    };
  }

  String SuggestedInfoToJson() => json.encode(SuggestedInfoToMap());
}
