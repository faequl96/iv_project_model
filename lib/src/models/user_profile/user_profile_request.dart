import 'dart:io';

import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';

class UserProfileRequest extends Equatable {
  const UserProfileRequest({this.firstName, this.lastName, this.phone, this.brandName, this.instagram, this.address});

  final String? firstName;
  final String? lastName;
  final String? phone;
  final String? brandName;
  final String? instagram;
  final String? address;

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

class LogoImageRequest extends Equatable {
  const LogoImageRequest({this.logoImage});

  final File? logoImage;

  Future<Map<String, dynamic>> toFormDataMap() async {
    final map = <String, dynamic>{};

    if (logoImage != null) map['logo_image'] = await MultipartFile.fromFile(logoImage!.path, filename: 'logo_image');

    return map;
  }

  @override
  List<Object?> get props => [logoImage];
}
