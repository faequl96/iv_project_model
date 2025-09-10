import 'package:equatable/equatable.dart';

class CreateBridegroomRequest extends Equatable {
  const CreateBridegroomRequest({
    required this.nickname,
    required this.fullName,
    this.title,
    required this.fatherName,
    this.fatherTitle,
    required this.motherName,
    this.motherTitle,
  });

  final String nickname;
  final String fullName;
  final String? title;
  final String fatherName;
  final String? fatherTitle;
  final String motherName;
  final String? motherTitle;

  Map<String, dynamic> toJson() {
    return {
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
  List<Object?> get props => [nickname, fullName, title, fatherName, fatherTitle, motherName, motherTitle];
}

class UpdateBridegroomRequest extends Equatable {
  const UpdateBridegroomRequest({
    this.nickname,
    this.fullName,
    this.title,
    this.fatherName,
    this.fatherTitle,
    this.motherName,
    this.motherTitle,
  });

  final String? nickname;
  final String? fullName;
  final String? title;
  final String? fatherName;
  final String? fatherTitle;
  final String? motherName;
  final String? motherTitle;

  Map<String, dynamic> toJson() {
    return {
      if (nickname != null) 'nickname': nickname,
      if (fullName != null) 'full_name': fullName,
      if (title != null) 'title': title,
      if (fatherName != null) 'father_name': fatherName,
      if (fatherTitle != null) 'father_title': fatherTitle,
      if (motherName != null) 'mother_name': motherName,
      if (motherTitle != null) 'mother_title': motherTitle,
    };
  }

  @override
  List<Object?> get props => [nickname, fullName, title, fatherName, fatherTitle, motherName, motherTitle];
}
