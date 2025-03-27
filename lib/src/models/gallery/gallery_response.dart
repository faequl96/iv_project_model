import 'package:equatable/equatable.dart';

class GalleryResponse extends Equatable {
  const GalleryResponse({
    required this.id,
    this.imageURL1,
    this.imageURL2,
    this.imageURL3,
    this.imageURL4,
    this.imageURL5,
    this.imageURL6,
    this.imageURL7,
    this.imageURL8,
    this.imageURL9,
    this.imageURL10,
    this.imageURL11,
    this.imageURL12,
  });

  final int id;
  final String? imageURL1;
  final String? imageURL2;
  final String? imageURL3;
  final String? imageURL4;
  final String? imageURL5;
  final String? imageURL6;
  final String? imageURL7;
  final String? imageURL8;
  final String? imageURL9;
  final String? imageURL10;
  final String? imageURL11;
  final String? imageURL12;

  factory GalleryResponse.fromJson(Map<String, dynamic> json) {
    return GalleryResponse(
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
