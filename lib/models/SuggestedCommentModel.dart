// ignore_for_file: file_names, non_constant_identifier_names

class SuggestedCommentModel {
  final String UserName;
  final String CommentText;

  SuggestedCommentModel({required this.UserName, required this.CommentText});

  factory SuggestedCommentModel.fromJson(Map<String, dynamic> json) {
    return SuggestedCommentModel(
      UserName: json['UserName'],
      CommentText: json['cCommentText'],
    );
  }
}
