import 'package:equatable/equatable.dart';

class BridegroomResponse extends Equatable {
  const BridegroomResponse({
    required this.id,
    required this.nickname,
    required this.fullName,
    this.imageUrl,
    required this.fatherName,
    required this.motherName,
  });

  final int id;
  final String nickname;
  final String fullName;
  final String? imageUrl;
  final String fatherName;
  final String motherName;

  factory BridegroomResponse.fromJson(Map<String, dynamic> json) {
    return BridegroomResponse(
      id: json['id'],
      nickname: json['nickname'],
      imageUrl: json['image_url'],
      fullName: json['full_name'],
      fatherName: json['father_name'],
      motherName: json['mother_name'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'nickname': nickname,
      'full_name': fullName,
      'image_url': imageUrl,
      'father_name': fatherName,
      'mother_name': motherName,
    };
  }

  @override
  List<Object?> get props => [id, nickname, fullName, imageUrl, fatherName, motherName];
}
