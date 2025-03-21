// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
  id: (json['id'] as num).toInt(),
  firstName: json['firstName'] as String,
  lastName: json['lastName'] as String,
  email: json['email'] as String,
  info: json['info'] as String,
  accountType: json['accountType'] as String,
  accountTypeClub: json['accountTypeClub'] as String?,
  points: (json['points'] as num).toInt(),
  badgesCount: (json['badgesCount'] as num).toInt(),
  badges:
      (json['badges'] as List<dynamic>)
          .map((e) => Badge.fromJson(e as Map<String, dynamic>))
          .toList(),
  skills:
      (json['skills'] as List<dynamic>)
          .map((e) => Skill.fromJson(e as Map<String, dynamic>))
          .toList(),
  isPublicCoach: json['isPublicCoach'] as bool,
  birthday: DateTime.parse(json['birthday'] as String),
  gender: json['gender'] as String,
  bmr: (json['bmr'] as num).toInt(),
  height: (json['height'] as num).toInt(),
  weight: (json['weight'] as num).toDouble(),
  weightGoal: (json['weightGoal'] as num).toInt(),
  level: json['level'] as String,
  goal: Goal.fromJson(json['goal'] as Map<String, dynamic>),
  city: City.fromJson(json['city'] as Map<String, dynamic>),
  countryCode: json['countryCode'] as String,
  language: json['language'] as String,
  location: Location.fromJson(json['location'] as Map<String, dynamic>),
  followersCount: (json['followersCount'] as num).toInt(),
  workoutsCount: (json['workoutsCount'] as num).toInt(),
  feedsCount: (json['feedsCount'] as num).toInt(),
  recentActivity:
      (json['recentActivity'] as List<dynamic>)
          .map((e) => Activity.fromJson(e as Map<String, dynamic>))
          .toList(),
  programs:
      (json['programs'] as List<dynamic>)
          .map((e) => Program.fromJson(e as Map<String, dynamic>))
          .toList(),
  clubs:
      (json['clubs'] as List<dynamic>)
          .map((e) => Club.fromJson(e as Map<String, dynamic>))
          .toList(),
  subscriptions:
      (json['subscriptions'] as List<dynamic>)
          .map((e) => Subscription.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
  'id': instance.id,
  'firstName': instance.firstName,
  'lastName': instance.lastName,
  'email': instance.email,
  'info': instance.info,
  'accountType': instance.accountType,
  'accountTypeClub': instance.accountTypeClub,
  'points': instance.points,
  'badgesCount': instance.badgesCount,
  'badges': instance.badges.map((e) => e.toJson()).toList(),
  'skills': instance.skills.map((e) => e.toJson()).toList(),
  'isPublicCoach': instance.isPublicCoach,
  'birthday': instance.birthday.toIso8601String(),
  'gender': instance.gender,
  'bmr': instance.bmr,
  'height': instance.height,
  'weight': instance.weight,
  'weightGoal': instance.weightGoal,
  'level': instance.level,
  'goal': instance.goal.toJson(),
  'city': instance.city.toJson(),
  'countryCode': instance.countryCode,
  'language': instance.language,
  'location': instance.location.toJson(),
  'followersCount': instance.followersCount,
  'workoutsCount': instance.workoutsCount,
  'feedsCount': instance.feedsCount,
  'recentActivity': instance.recentActivity.map((e) => e.toJson()).toList(),
  'programs': instance.programs.map((e) => e.toJson()).toList(),
  'clubs': instance.clubs.map((e) => e.toJson()).toList(),
  'subscriptions': instance.subscriptions.map((e) => e.toJson()).toList(),
};

Badge _$BadgeFromJson(Map<String, dynamic> json) => Badge(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  description: json['description'] as String,
  date: DateTime.parse(json['date'] as String),
  count: (json['count'] as num).toInt(),
  images:
      (json['images'] as List<dynamic>)
          .map((e) => BadgeImage.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$BadgeToJson(Badge instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'description': instance.description,
  'date': instance.date.toIso8601String(),
  'count': instance.count,
  'images': instance.images,
};

BadgeImage _$BadgeImageFromJson(Map<String, dynamic> json) =>
    BadgeImage(url: json['url'] as String, label: json['label'] as String);

Map<String, dynamic> _$BadgeImageToJson(BadgeImage instance) =>
    <String, dynamic>{'url': instance.url, 'label': instance.label};

Skill _$SkillFromJson(Map<String, dynamic> json) =>
    Skill(id: (json['id'] as num).toInt(), name: json['name'] as String);

Map<String, dynamic> _$SkillToJson(Skill instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
};

Goal _$GoalFromJson(Map<String, dynamic> json) => Goal(
  value: json['value'] as String,
  permission: json['permission'] as String,
);

Map<String, dynamic> _$GoalToJson(Goal instance) => <String, dynamic>{
  'value': instance.value,
  'permission': instance.permission,
};

City _$CityFromJson(Map<String, dynamic> json) => City(
  value: json['value'] as String,
  permission: json['permission'] as String,
);

Map<String, dynamic> _$CityToJson(City instance) => <String, dynamic>{
  'value': instance.value,
  'permission': instance.permission,
};

Location _$LocationFromJson(Map<String, dynamic> json) => Location(
  lng: (json['lng'] as num).toDouble(),
  lat: (json['lat'] as num).toDouble(),
);

Map<String, dynamic> _$LocationToJson(Location instance) => <String, dynamic>{
  'lng': instance.lng,
  'lat': instance.lat,
};

Activity _$ActivityFromJson(Map<String, dynamic> json) => Activity(
  date: DateTime.parse(json['date'] as String),
  duration: (json['duration'] as num).toInt(),
);

Map<String, dynamic> _$ActivityToJson(Activity instance) => <String, dynamic>{
  'date': instance.date.toIso8601String(),
  'duration': instance.duration,
};

Program _$ProgramFromJson(Map<String, dynamic> json) => Program(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  url: json['url'] as String,
  totalWeeks: (json['totalWeeks'] as num).toInt(),
  state: json['state'] as String,
);

Map<String, dynamic> _$ProgramToJson(Program instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'url': instance.url,
  'totalWeeks': instance.totalWeeks,
  'state': instance.state,
};

Club _$ClubFromJson(Map<String, dynamic> json) => Club(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  url: json['url'] as String,
  type: json['type'] as String,
  chatEnabled: json['chatEnabled'] as bool,
  bookingEnabled: json['bookingEnabled'] as bool,
);

Map<String, dynamic> _$ClubToJson(Club instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'url': instance.url,
  'type': instance.type,
  'chatEnabled': instance.chatEnabled,
  'bookingEnabled': instance.bookingEnabled,
};

Subscription _$SubscriptionFromJson(Map<String, dynamic> json) => Subscription(
  sku: json['sku'] as String,
  name: json['name'] as String,
  canCancel: json['canCancel'] as bool,
  status: json['status'] as String,
);

Map<String, dynamic> _$SubscriptionToJson(Subscription instance) =>
    <String, dynamic>{
      'sku': instance.sku,
      'name': instance.name,
      'canCancel': instance.canCancel,
      'status': instance.status,
    };
