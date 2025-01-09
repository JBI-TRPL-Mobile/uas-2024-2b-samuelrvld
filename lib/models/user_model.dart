class User {  
  final int id;  
  final String name;  // Pastikan ini merupakan nama lengkap  
  final String email;  
  final String profilePicture;  

  User({  
    required this.id,  
    required this.name,  
    required this.email,  
    required this.profilePicture,  
  });  

  factory User.fromJson(Map<String, dynamic> json) {  
    return User(  
      id: json['id'] ?? 0,  
      name: json['name'] ?? 'Unknown',  
      email: json['email'] ?? 'unknown@example.com',  
      profilePicture: json['profile_picture'] ?? '',  
    );  
  }  

  String get fullName => name; // Mengembalikan nama  

  Map<String, dynamic> toJson() {  
    return {  
      'id': id,  
      'name': name,  
      'email': email,  
      'profile_picture': profilePicture,  
    };  
  }  
}