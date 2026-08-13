import 'package:equatable/equatable.dart';

class const GalleryResponse({
  required final int id,
  final String? imageURL1,
  final String? imageURL2,
  final String? imageURL3,
  final String? imageURL4,
  final String? imageURL5,
  final String? imageURL6,
  final String? imageURL7,
  final String? imageURL8,
  final String? imageURL9,
  final String? imageURL10,
  final String? imageURL11,
  final String? imageURL12,
}) extends Equatable {
  factory fromJson(Map<String, dynamic> json) {
    return .new(
      id: json['id'],
      imageURL1: json['image_url_1'],
      imageURL2: json['image_url_2'],
      imageURL3: json['image_url_3'],
      imageURL4: json['image_url_4'],
      imageURL5: json['image_url_5'],
      imageURL6: json['image_url_6'],
      imageURL7: json['image_url_7'],
      imageURL8: json['image_url_8'],
      imageURL9: json['image_url_9'],
      imageURL10: json['image_url_10'],
      imageURL11: json['image_url_11'],
      imageURL12: json['image_url_12'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'image_url_1': imageURL1,
      'image_url_2': imageURL2,
      'image_url_3': imageURL3,
      'image_url_4': imageURL4,
      'image_url_5': imageURL5,
      'image_url_6': imageURL6,
      'image_url_7': imageURL7,
      'image_url_8': imageURL8,
      'image_url_9': imageURL9,
      'image_url_10': imageURL10,
      'image_url_11': imageURL11,
      'image_url_12': imageURL12,
    };
  }

  @override
  List<Object?> get props => [
    id,
    imageURL1,
    imageURL2,
    imageURL3,
    imageURL4,
    imageURL5,
    imageURL6,
    imageURL7,
    imageURL8,
    imageURL9,
    imageURL10,
    imageURL11,
    imageURL12,
  ];
}
