import 'package:equatable/equatable.dart';

class Contact extends Equatable {
  static const ID = 'id';
  static const EMAIL = 'email';
  static const FIRST_NAME = 'first_name';
  static const LAST_NAME = 'last_name';
  static const AVATAR = 'avatar';
  static const FAVOURITE = 'favourite';

  final int id;
  final String firstName;
  final String lastName;
  final String email;
  final String avatar;
  final String favourite;

  const Contact({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.avatar,
    required this.favourite,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'firstName': firstName,
      'lastName': lastName,
      'email': email,
      'avatar': avatar,
      'favourite': favourite,
    };
  }

  Contact.fromMap(Map<String, dynamic> data)
      : id = int.parse(ID),
        email = data[EMAIL],
        firstName = data[FIRST_NAME],
        lastName = data[LAST_NAME],
        avatar = data[AVATAR],
        favourite = 'false';

  @override
  // TODO: implement props
  List<Object?> get props => [
        id,
        email,
        firstName,
        lastName,
        avatar,
      ];
}
