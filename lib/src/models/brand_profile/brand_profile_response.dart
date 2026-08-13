import 'package:equatable/equatable.dart';

class const BrandProfileResponse({
  required final String name,
  final String? logoUrl,
  required final String email,
  final String? phone,
  final String? instagram,
  final String? address,
}) extends Equatable {
  factory fromJson(Map<String, dynamic> json) {
    return .new(
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
      'name': name,
      'logo_url': logoUrl,
      'email': email,
      'phone': phone,
      'instagram': instagram,
      'address': address,
    };
  }

  @override
  List<Object?> get props => [name, logoUrl, email, phone, instagram, address];
}
