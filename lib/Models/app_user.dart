// ignore_for_file: file_names

class AppUser {
  final int? id;
  final String? username;
  final String? firstName;
  final String? lastName;
  final String? email;
  final String? phone;
  final String? profilePicture;
  final String? isoCode;
  final String? countryCode;
  final String? profilePhotoUrl;

  AppUser({
    this.id,
    this.username,
    this.firstName,
    this.lastName,
    this.email,
    this.phone,
    this.isoCode,
    this.countryCode,
    this.profilePicture,
    this.profilePhotoUrl,
  });

  factory AppUser.fromJson(Map<String, dynamic> json) {
    return AppUser(
      id: json['id'],
      username: json['username'],
      firstName: json['first_name'],
      lastName: json['last_name'],
      email: json['email'],
      isoCode: json['iso_code'],
      countryCode: json['country_code'],
      phone: json['contact_number'],
      profilePicture: json['profile_picture'],
      profilePhotoUrl: json['profile_photo_url'],
    );
  }

  Map<String, dynamic> toJson() => {
    "id": id,
    "username": username,
    "first_name": firstName,
    "last_name": lastName,
    "email": email,
    "iso_code": isoCode,
    "country_code": countryCode,
    "contact_number": phone,
    "profile_picture": profilePicture,
    "profile_photo_url": profilePhotoUrl,
  };
}