class User {
  final String name;
  final String imageUrl;
  final bool isOnline;
  final bool hasStory;
  final String? message;
  final String? time;

  User(
      {required this.name,
      required this.imageUrl,
      required this.isOnline,
      required this.hasStory,
      this.message,
      this.time

      });

      factory User.fromJson(Map<String, dynamic> json) {
    return User(
      name: json['name'],
      imageUrl: json['imageUrl'],
      isOnline: json['isOnline'],
      hasStory: json['hasStory'],
      message: json['message'],
      time: json['time'],


    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'imageUrl': imageUrl,
      'isOnline': isOnline,
      'hasStory': hasStory,
      'message': message,
      'time': time,
    };
  }
}
