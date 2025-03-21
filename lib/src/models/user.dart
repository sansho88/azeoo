import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable(explicitToJson: true)
class User {
  final int id;
  final String firstName;
  final String lastName;
  final String email;
  final String info;
  final String accountType;
  final String? accountTypeClub;
  final int points;
  final int badgesCount;
  final List<Badge> badges;
  final List<Skill> skills;
  final bool isPublicCoach;
  final DateTime birthday;
  final String gender;
  final int bmr;
  final int height;
  final double weight;
  final int weightGoal;
  final String level;
  final Goal goal;
  final City city;
  final String countryCode;
  final String language;
  final Location location;
  final int followersCount;
  final int workoutsCount;
  final int feedsCount;
  final List<Activity> recentActivity;
  final List<Program> programs;
  final List<Club> clubs;
  final List<Subscription> subscriptions;

  User({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.info,
    required this.accountType,
    this.accountTypeClub,
    required this.points,
    required this.badgesCount,
    required this.badges,
    required this.skills,
    required this.isPublicCoach,
    required this.birthday,
    required this.gender,
    required this.bmr,
    required this.height,
    required this.weight,
    required this.weightGoal,
    required this.level,
    required this.goal,
    required this.city,
    required this.countryCode,
    required this.language,
    required this.location,
    required this.followersCount,
    required this.workoutsCount,
    required this.feedsCount,
    required this.recentActivity,
    required this.programs,
    required this.clubs,
    required this.subscriptions,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}

@JsonSerializable()
class Badge {
  final int id;
  final String name;
  final String description;
  final DateTime date;
  final int count;
  final List<BadgeImage> images;

  Badge({required this.id, required this.name, required this.description, required this.date, required this.count, required this.images});

  factory Badge.fromJson(Map<String, dynamic> json) => _$BadgeFromJson(json);
  Map<String, dynamic> toJson() => _$BadgeToJson(this);
}

@JsonSerializable()
class BadgeImage {
  final String url;
  final String label;

  BadgeImage({required this.url, required this.label});

  factory BadgeImage.fromJson(Map<String, dynamic> json) => _$BadgeImageFromJson(json);
  Map<String, dynamic> toJson() => _$BadgeImageToJson(this);
}

@JsonSerializable()
class Skill {
  final int id;
  final String name;

  Skill({required this.id, required this.name});

  factory Skill.fromJson(Map<String, dynamic> json) => _$SkillFromJson(json);
  Map<String, dynamic> toJson() => _$SkillToJson(this);
}

@JsonSerializable()
class Goal {
  final String value;
  final String permission;

  Goal({required this.value, required this.permission});

  factory Goal.fromJson(Map<String, dynamic> json) => _$GoalFromJson(json);
  Map<String, dynamic> toJson() => _$GoalToJson(this);
}

@JsonSerializable()
class City {
  final String value;
  final String permission;

  City({required this.value, required this.permission});

  factory City.fromJson(Map<String, dynamic> json) => _$CityFromJson(json);
  Map<String, dynamic> toJson() => _$CityToJson(this);
}

@JsonSerializable()
class Location {
  final double lng;
  final double lat;

  Location({required this.lng, required this.lat});

  factory Location.fromJson(Map<String, dynamic> json) => _$LocationFromJson(json);
  Map<String, dynamic> toJson() => _$LocationToJson(this);
}

@JsonSerializable()
class Activity {
  final DateTime date;
  final int duration;

  Activity({required this.date, required this.duration});

  factory Activity.fromJson(Map<String, dynamic> json) => _$ActivityFromJson(json);
  Map<String, dynamic> toJson() => _$ActivityToJson(this);
}

@JsonSerializable()
class Program {
  final int id;
  final String name;
  final String url;
  final int totalWeeks;
  final String state;

  Program({
    required this.id,
    required this.name,
    required this.url,
    required this.totalWeeks,
    required this.state,
  });

  factory Program.fromJson(Map<String, dynamic> json) => _$ProgramFromJson(json);
  Map<String, dynamic> toJson() => _$ProgramToJson(this);
}

@JsonSerializable()
class Club {
  final int id;
  final String name;
  final String url;
  final String type;
  final bool chatEnabled;
  final bool bookingEnabled;

  Club({
    required this.id,
    required this.name,
    required this.url,
    required this.type,
    required this.chatEnabled,
    required this.bookingEnabled,
  });

  factory Club.fromJson(Map<String, dynamic> json) => _$ClubFromJson(json);
  Map<String, dynamic> toJson() => _$ClubToJson(this);
}

@JsonSerializable()
class Subscription {
  final String sku;
  final String name;
  final bool canCancel;
  final String status;

  Subscription({
    required this.sku,
    required this.name,
    required this.canCancel,
    required this.status,
  });

  factory Subscription.fromJson(Map<String, dynamic> json) => _$SubscriptionFromJson(json);
  Map<String, dynamic> toJson() => _$SubscriptionToJson(this);
}
