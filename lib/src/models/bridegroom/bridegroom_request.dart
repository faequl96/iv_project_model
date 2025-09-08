import 'package:equatable/equatable.dart';

class CreateBridegroomRequest extends Equatable {
  const CreateBridegroomRequest({
    required this.nickname,
    required this.fullName,
    required this.fatherName,
    required this.motherName,
  });

  final String nickname;
  final String fullName;
  final String fatherName;
  final String motherName;

  Map<String, dynamic> toJson() {
    return {'nickname': nickname, 'full_name': fullName, 'father_name': fatherName, 'mother_name': motherName};
  }

  @override
  List<Object> get props => [nickname, fullName, fatherName, motherName];
}

class UpdateBridegroomRequest extends Equatable {
  const UpdateBridegroomRequest({this.nickname, this.fullName, this.fatherName, this.motherName});

  final String? nickname;
  final String? fullName;
  final String? fatherName;
  final String? motherName;

  Map<String, dynamic> toJson() {
    return {
      if (nickname != null) 'nickname': nickname,
      if (fullName != null) 'full_name': fullName,
      if (fatherName != null) 'father_name': fatherName,
      if (motherName != null) 'mother_name': motherName,
    };
  }

  @override
  List<Object?> get props => [nickname, fullName, fatherName, motherName];
}
