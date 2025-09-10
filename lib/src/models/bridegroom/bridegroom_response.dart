import 'package:equatable/equatable.dart';

class BridegroomResponse extends Equatable {
  const BridegroomResponse({
    required this.id,
    this.imageUrl,
    required this.nickname,
    required this.fullName,
    this.title,
    required this.fatherName,
    this.fatherTitle,
    required this.motherName,
    this.motherTitle,
  });

  final int id;
  final String? imageUrl;
  final String nickname;
  final String fullName;
  final String? title;
  final String fatherName;
  final String? fatherTitle;
  final String motherName;
  final String? motherTitle;

  factory BridegroomResponse.fromJson(Map<String, dynamic> json) {
    return BridegroomResponse(
      id: json['id'],
      imageUrl: json['image_url'],
      nickname: json['nickname'],
      fullName: json['full_name'],
      title: json['title'],
      fatherName: json['father_name'],
      fatherTitle: json['father_title'],
      motherName: json['mother_name'],
      motherTitle: json['mother_title'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'image_url': imageUrl,
      'nickname': nickname,
      'full_name': fullName,
      'title': title,
      'father_name': fatherName,
      'father_title': fatherTitle,
      'mother_name': motherName,
      'mother_title': motherTitle,
    };
  }

  @override
  List<Object?> get props => [id, imageUrl, nickname, fullName, title, fatherName, fatherTitle, motherName, motherTitle];
}
