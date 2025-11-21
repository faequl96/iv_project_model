import 'package:equatable/equatable.dart';

class UserProfileResponse extends Equatable {
  const UserProfileResponse({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    this.phone,
    this.brandName,
    this.logoUrl,
    this.instagram,
    this.address,
  });

  final int id;
  final String firstName;
  final String lastName;
  final String email;
  final String? phone;
  final String? brandName;
  final String? logoUrl;
  final String? instagram;
  final String? address;

  factory UserProfileResponse.fromJson(Map<String, dynamic> json) {
    return UserProfileResponse(
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
  List<Object?> get props => [id, firstName, lastName, email, phone, brandName, logoUrl, instagram, address];
}
