import 'dart:io';

import 'package:equatable/equatable.dart';

class const UserProfileRequest({
  final String? firstName,
  final String? lastName,
  final String? phone,
  final String? brandName,
  final String? instagram,
  final String? address,
}) extends Equatable {
  Map<String, dynamic> toJson() {
    return {
      if (firstName != null) 'first_name': firstName,
      if (lastName != null) 'last_name': lastName,
      if (phone != null) 'phone': phone,
      if (brandName != null) 'brand_name': brandName,
      if (instagram != null) 'instagram': instagram,
      if (address != null) 'address': address,
    };
  }

  @override
  List<Object?> get props => [firstName, lastName, phone, brandName, instagram, address];
}

class const LogoImageRequest({final File? logoImage}) extends Equatable {
  Future<Map<String, dynamic>> toFormDataMap(
    Future<Map<String, dynamic>> Function(File? logoImage) getValue,
  ) {
    return getValue(logoImage);
  }

  @override
  List<Object?> get props => [logoImage];
}
