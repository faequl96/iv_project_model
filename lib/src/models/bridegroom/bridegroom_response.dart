import 'package:equatable/equatable.dart';

class const BridegroomResponse({
  required final int id,
  required final String imageUrl,
  required final String nickname,
  required final String fullName,
  final String? frontTitle,
  final String? backTitle,
  required final String fatherName,
  final String? fatherFrontTitle,
  final String? fatherBackTitle,
  required final String motherName,
  final String? motherFrontTitle,
  final String? motherBackTitle,
}) extends Equatable {
  factory fromJson(Map<String, dynamic> json) {
    return .new(
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
