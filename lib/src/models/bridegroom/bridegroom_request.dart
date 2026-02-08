import 'package:equatable/equatable.dart';

class BridegroomRequest extends Equatable {
  const BridegroomRequest({
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

  Map<String, dynamic> toJson() {
    return {
      'nickname': nickname,
      'full_name': fullName,
      if (frontTitle != null) 'front_title': frontTitle,
      if (backTitle != null) 'back_title': backTitle,
      'father_name': fatherName,
      if (fatherFrontTitle != null) 'father_front_title': fatherFrontTitle,
      if (fatherBackTitle != null) 'father_back_title': fatherBackTitle,
      'mother_name': motherName,
      if (motherFrontTitle != null) 'mother_front_title': motherFrontTitle,
      if (motherBackTitle != null) 'mother_back_title': motherBackTitle,
    };
  }

  @override
  List<Object?> get props => [
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
