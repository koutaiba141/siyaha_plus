// ignore_for_file: file_names, non_constant_identifier_names

import 'dart:typed_data';

class SuggestedProfileModel {
  final Uint8List SuggestedProfile;
  final String SuggestedName;
  final int Likes;
  final int Comments;
  final String Email;
  final String PhoneNumber;
  final String FacebookLink;
  final String InstagramLink;
  final String TiktokLink;
  final String YoutubeLink;

  SuggestedProfileModel({
    required this.SuggestedProfile,
    required this.SuggestedName,
    required this.Likes,
    required this.Comments,
    required this.Email,
    required this.PhoneNumber,
    required this.FacebookLink,
    required this.InstagramLink,
    required this.TiktokLink,
    required this.YoutubeLink,
  });

  factory SuggestedProfileModel.fromJson(Map<String, dynamic> json) {
    return SuggestedProfileModel(
      SuggestedProfile: Uint8List.fromList(List<int>.from(json['profile'])),
      SuggestedName: json['suggestedName'],
      Likes: json['likes'],
      Comments: json['comments'],
      Email: json['email'],
      PhoneNumber: json['phoneNumber'],
      FacebookLink: json['facebookLink'],
      InstagramLink: json['instagramLink'],
      TiktokLink: json['tiktokLink'],
      YoutubeLink: json['youtubeLink'],
    );
  }
}
