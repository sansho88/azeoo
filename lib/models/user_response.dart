import 'user_simplified.dart';

class UserResponse {
  final int totalCount;
  final List<UserSimplified> items;

  UserResponse({
    required this.totalCount,
    required this.items,
  });

  factory UserResponse.fromJson(Map<String, dynamic> json) {
    return UserResponse(
      totalCount: json['total_count'],
      items: (json['items'] as List)
          .map((item) => UserSimplified.fromJson(item))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'total_count': totalCount,
      'items': items.map((item) => item.toJson()).toList(),
    };
  }
}
