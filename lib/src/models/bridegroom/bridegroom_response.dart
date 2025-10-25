import 'package:equatable/equatable.dart';

class BridegroomResponse extends Equatable {
  const BridegroomResponse({
    required this.id,
    this.imageUrl,
    required this.nickname,
    required this.fullName,
    this.frontTitle,
    this.backTitle,
    required this.fatherName,
    this.fatherFrontTitle,
    this.fatherBackTitle,
    required this.motherName,
    this.motherFrontTitle,
    this.motherBackTitle,
  });

  final int id;
  final String? imageUrl;
  final String nickname;
  final String fullName;
  final String? frontTitle;
  final String? backTitle;
  final String fatherName;
  final String? fatherFrontTitle;
  final String? fatherBackTitle;
  final String motherName;
  final String? motherFrontTitle;
  final String? motherBackTitle;

  factory BridegroomResponse.fromJson(Map<String, dynamic> json) {
    return BridegroomResponse(
      id: json['id'],
      imageUrl: json['image_url'],
      nickname: json['nickname'],
      fullName: json['full_name'],
      frontTitle: json['front_title'],
      backTitle: json['back_title'],
      fatherName: json['father_name'],
      fatherFrontTitle: json['father_front_title'],
      fatherBackTitle: json['father_back_title'],
      motherName: json['mother_name'],
      motherFrontTitle: json['mother_front_title'],
      motherBackTitle: json['mother_back_title'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'image_url': imageUrl,
      'nickname': nickname,
      'full_name': fullName,
      'front_title': frontTitle,
      'back_title': backTitle,
      'father_name': fatherName,
      'father_front_title': fatherFrontTitle,
      'father_back_title': fatherBackTitle,
      'mother_name': motherName,
      'mother_front_title': motherFrontTitle,
      'mother_back_title': motherBackTitle,
    };
  }

  @override
  List<Object?> get props => [
    id,
    imageUrl,
    nickname,
    fullName,
    frontTitle,
    backTitle,
    fatherName,
    fatherFrontTitle,
    fatherBackTitle,
    motherName,
    motherFrontTitle,
    motherBackTitle,
  ];
}
