class User {
  final String id;
  final String name;
  final String email;
  final SubscriptionTier subscriptionTier;
  final bool isNewUser;
  final DateTime createdAt;

  User({
    required this.id,
    required this.name,
    required this.email,
    this.subscriptionTier = SubscriptionTier.free,
    this.isNewUser = true,
    required this.createdAt,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      subscriptionTier: SubscriptionTier.values[json['subscriptionTier']],
      isNewUser: json['isNewUser'],
      createdAt: DateTime.parse(json['createdAt']),
    );
  }
} 