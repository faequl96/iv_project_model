import 'package:equatable/equatable.dart';

class const CreateReviewRequest({
  required final int star,
  required final String comment,
  required final int invitationThemeId,
}) extends Equatable {
  Map<String, dynamic> toJson() {
    return {'star': star, 'comment': comment, 'invitation_theme_id': invitationThemeId};
  }

  @override
  List<Object?> get props => [star, comment, invitationThemeId];
}

class const UpdateReviewRequest({final int? star, final String? comment}) extends Equatable {
  Map<String, dynamic> toJson() {
    return {if (star != null) 'star': star, if (comment != null) 'comment': comment};
  }

  @override
  List<Object?> get props => [star, comment];
}
