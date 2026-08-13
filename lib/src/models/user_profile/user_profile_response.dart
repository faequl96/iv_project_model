import 'package:equatable/equatable.dart';

class const UserProfileResponse({
  required final int id,
  required final String firstName,
  required final String lastName,
  required final String email,
  final String? phone,
  final String? brandName,
  final String? logoUrl,
  final String? instagram,
  final String? address,
}) extends Equatable {
  factory fromJson(Map<String, dynamic> json) {
    return .new(
      id: json['id'],
      firstName: json['first_name'],
      lastName: json['last_name'],
      email: json['email'],
      phone: json['phone'],
      brandName: json['brand_name'],
      logoUrl: json['logo_url'],
      instagram: json['instagram'],
      address: json['address'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'first_name': firstName,
      'last_name': lastName,
      'email': email,
      'phone': phone,
      'brand_name': brandName,
      'logo_url': logoUrl,
      'instagram': instagram,
      'address': address,
    };
  }

  @override
  List<Object?> get props => [
    id,
    firstName,
    lastName,
    email,
    phone,
    brandName,
    logoUrl,
    instagram,
    address,
  ];
}
