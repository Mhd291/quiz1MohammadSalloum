class User {
  final int? id;
  final String firstName;
  final String lastName;
  final String about;
  final String image;

  User({
    this.id,
    required this.firstName,
    required this.lastName,
    required this.about,
    required this.image,
  });
  String CompleteName(){
    return "$firstName $lastName";
  }

  factory User.fromMap(Map<String, dynamic> data) {
    return User(
      id: data['id'],
      firstName: data['first_name'],
      lastName: data['last_name'],
      about: data['about'],
      image: data['image'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'first_name': firstName,
      'last_name': lastName,
      'about': about,
      'image': image,
    };
  }
}
