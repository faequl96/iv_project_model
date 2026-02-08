import 'package:equatable/equatable.dart';

class GalleryRequest extends Equatable {
  const GalleryRequest({
    this.removeImageURL1 = false,
    this.removeImageURL2 = false,
    this.removeImageURL3 = false,
    this.removeImageURL4 = false,
    this.removeImageURL5 = false,
    this.removeImageURL6 = false,
    this.removeImageURL7 = false,
    this.removeImageURL8 = false,
    this.removeImageURL9 = false,
    this.removeImageURL10 = false,
    this.removeImageURL11 = false,
    this.removeImageURL12 = false,
  });

  final bool removeImageURL1;
  final bool removeImageURL2;
  final bool removeImageURL3;
  final bool removeImageURL4;
  final bool removeImageURL5;
  final bool removeImageURL6;
  final bool removeImageURL7;
  final bool removeImageURL8;
  final bool removeImageURL9;
  final bool removeImageURL10;
  final bool removeImageURL11;
  final bool removeImageURL12;

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
