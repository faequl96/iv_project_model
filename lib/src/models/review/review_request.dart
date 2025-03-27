import 'package:equatable/equatable.dart';

class CreateReviewRequest extends Equatable {
  const CreateReviewRequest({required this.star, required this.comment, required this.invitationThemeId});

  final int star;
  final String comment;
  final int invitationThemeId;

  Map<String, dynamic> toJson() {
    return {'star': star, 'comment': comment, 'invitation_theme_id': invitationThemeId};
  }

  @override
  List<Object?> get props => [star, comment, invitationThemeId];
}

class UpdateReviewRequest extends Equatable {
  const UpdateReviewRequest({this.star, this.comment});

  final int? star;
  final String? comment;

  Map<String, dynamic> toJson() {
    return {if (star != null) 'star': star, if (comment != null) 'comment': comment};
  }

  @override
  List<Object?> get props => [star, comment];
}
