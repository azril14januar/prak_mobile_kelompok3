class User {
  final int id;
  final String name;
  final String username;
  final String email;
  final String? profilePhoto;
  final String? phoneNumber;

  User({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
    this.profilePhoto,
    this.phoneNumber,
  });

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map["id"],
      name: map["name"],
      username: map["username"],
      email: map["email"],
      profilePhoto: map["profile_photo"],
      phoneNumber: map["phone_number"],
    );
  }

  factory User.dummy() {
    return User(
      id: 001,
      name: "Team3",
      username: "theteam3",
      email: "team3@email.com",
      profilePhoto:
          "https://tse4.mm.bing.net/th?id=OIP.5OZLhPrTsZXQOx48SILe_gHaLR&pid=Api&P=0",
      phoneNumber: "085123456789",
    );
  }
}
