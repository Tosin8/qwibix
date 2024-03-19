// ignore_for_file: public_member_api_docs, sort_constructors_first
// model class representing user data. 

class UserModel {
  // keep those values final which don't want to be updated.

  final String id;
  String firstName; 
  String lastName; 
  final String username; 
  final String email;
  String phoneNumber; 
  String profilePicture; 

  // Constructor for User Model. 
  UserModel({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.username,
    required this.email,
    required this.phoneNumber,
    required this.profilePicture,
  });
}
