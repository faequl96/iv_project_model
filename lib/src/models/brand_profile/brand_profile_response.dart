import 'package:equatable/equatable.dart';

class BrandProfileResponse extends Equatable {
  const BrandProfileResponse({
    required this.id,
    required this.name,
    this.logoUrl,
    required this.email,
    this.phone,
    this.instagram,
    this.address,
  });

  final int id;
  final String name;
  final String? logoUrl;
  final String email;
  final String? phone;
  final String? instagram;
  final String? address;

  factory BrandProfileResponse.fromJson(Map<String, dynamic> json) {
    return BrandProfileResponse(
      id: json['id'],
      name: json['name'],
      logoUrl: json['logo_url'],
      email: json['email'],
      phone: json['phone'],
      instagram: json['instagram'],
      address: json['address'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'logo_url': logoUrl,
      'email': email,
      'phone': phone,
      'instagram': instagram,
      'address': address,
    };
  }

  @override
  List<Object?> get props => [id, name, logoUrl, email, phone, instagram, address];
}
