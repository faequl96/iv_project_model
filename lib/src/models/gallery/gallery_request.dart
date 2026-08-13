import 'package:equatable/equatable.dart';

class const GalleryRequest({
  final bool removeImageURL1 = false,
  final bool removeImageURL2 = false,
  final bool removeImageURL3 = false,
  final bool removeImageURL4 = false,
  final bool removeImageURL5 = false,
  final bool removeImageURL6 = false,
  final bool removeImageURL7 = false,
  final bool removeImageURL8 = false,
  final bool removeImageURL9 = false,
  final bool removeImageURL10 = false,
  final bool removeImageURL11 = false,
  final bool removeImageURL12 = false,
}) extends Equatable {
  Map<String, dynamic> toJson() {
    return {
      'remove_image_url_1': removeImageURL1,
      'remove_image_url_2': removeImageURL2,
      'remove_image_url_3': removeImageURL3,
      'remove_image_url_4': removeImageURL4,
      'remove_image_url_5': removeImageURL5,
      'remove_image_url_6': removeImageURL6,
      'remove_image_url_7': removeImageURL7,
      'remove_image_url_8': removeImageURL8,
      'remove_image_url_9': removeImageURL9,
      'remove_image_url_10': removeImageURL10,
      'remove_image_url_11': removeImageURL11,
      'remove_image_url_12': removeImageURL12,
    };
  }

  @override
  List<Object?> get props => [
    removeImageURL1,
    removeImageURL2,
    removeImageURL3,
    removeImageURL4,
    removeImageURL5,
    removeImageURL6,
    removeImageURL7,
    removeImageURL8,
    removeImageURL9,
    removeImageURL10,
    removeImageURL11,
    removeImageURL12,
  ];
}
