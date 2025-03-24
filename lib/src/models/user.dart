import 'package:json_annotation/json_annotation.dart';


part 'user.g.dart';

@JsonSerializable(explicitToJson: true)
class User {
  final int id;
  final String? firstName;
  final String? lastName;
  final String? info;
  final String? email;
  final List<AzeooImage> picture;
  final String? accountType;
  final dynamic accountTypeClub;
  final String? countryFlag;
  final int points;
  final int badgesCount;
  final List<Badge> badges;
  final List<Skill> skills;
  final bool? isFollowing;
  final dynamic coachAttachmentState;
  final bool isPublicCoach;
  final Birthday birthday;
  final String? gender;
  final String? bmr;
  final int height;
  final String? formattedHeight;
  final double weight;
  final String? formattedWeight;
  final int weightGoal;
  final String? formattedWeightGoal;
  final String? level;
  final UserGoal goal;
  final UserCity city;
  final String? countryCode;
  final String? language;
  final UserLocation location;
  final bool? isFollower;
  final int followersCount;
  final int workoutsCount;
  final int feedsCount;
  final List<RecentActivity> recentActivity;
  final int programsCount;
  final List<UserProgramSimplified> programs;
  final dynamic coach;
  final List<ClubSimplified> clubs;
  final dynamic coachs;
  final dynamic teams;
  final String? quotes;
  final String? about;
  final dynamic aboutDiet;
  final dynamic aboutTraining;
  final dynamic aboutTrainingSchedule;
  final Contacts contacts;
  final bool isEmailVerified;
  final bool isSetupDone;
  final SetupFields setupFields;
  final bool isTest;
  final bool hasCometchatAccount;
  final bool chatEnabled;
  final String? trainingPermission;
  final String? nutritionPermission;
  final String? clubsPermission;
  final String? coachsPermission;
  final String? bodyPermission;
  final bool leaderboardDisabled;
  final List<dynamic> subscriptions; // Mixed list of different subscription types
  final Subscription subscription;
  final List<WhiteLabel> whiteLabels;
  final bool ssoOneconciergerieEnabled;
  final String? timezone;
  final dynamic premiumLabel;
  final bool disabledPremium;
  final dynamic diagoLink;
  final dynamic invoicesLink;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime lastActivity;
  final List<Content> contents;
  final bool canContact;
  final int teamsCount;
  final bool canAccessStatsAllPeriods;
  final bool canSetFavorite;
  final bool canFilterByEquipment;
  final bool canAutomaticallyUpdateNextTraining;
  final bool canCreateExercise;
  final bool canCreateFreeTraining;
  final bool canLogActivity;
  final bool canShowCustomers;
  final bool canDeleteAccount;
  final bool subscriptionsDisabled;

  User({
    required this.id,
    this.firstName,
    this.lastName,
    this.info,
    this.email,
    required this.picture,
    this.accountType,
    this.accountTypeClub, // Can be null
    this.countryFlag,
    required this.points,
    required this.badgesCount,
    required this.badges,
    required this.skills,
    this.isFollowing, // Nullable
    this.coachAttachmentState, // Nullable
    required this.isPublicCoach,
    required this.birthday,
    this.gender,
    this.bmr,
    required this.height,
    this.formattedHeight,
    required this.weight,
    this.formattedWeight,
    required this.weightGoal,
    this.formattedWeightGoal,
    this.level,
    required this.goal,
    required this.city,
    this.countryCode,
    this.language,
    required this.location,
    this.isFollower, // Nullable
    required this.followersCount,
    required this.workoutsCount,
    required this.feedsCount,
    required this.recentActivity,
    required this.programsCount,
    required this.programs,
    this.coach, // Nullable
    required this.clubs,
    this.coachs, // Nullable in your example
    this.teams, // Nullable in your example
    this.quotes,
    this.about,
    this.aboutDiet, // Nullable
    this.aboutTraining, // Nullable
    this.aboutTrainingSchedule, // Nullable
    required this.contacts,
    required this.isEmailVerified,
    required this.isSetupDone,
    required this.setupFields,
    required this.isTest,
    required this.hasCometchatAccount,
    required this.chatEnabled,
    this.trainingPermission,
    this.nutritionPermission,
    this.clubsPermission,
    this.coachsPermission,
    this.bodyPermission,
    required this.leaderboardDisabled,
    required this.subscriptions,
    required this.subscription,
    required this.whiteLabels,
    required this.ssoOneconciergerieEnabled,
    this.timezone,
    this.premiumLabel, // Nullable
    required this.disabledPremium,
    this.diagoLink, // Nullable
    this.invoicesLink, // Nullable
    required this.createdAt,
    required this.updatedAt,
    required this.lastActivity,
    required this.contents,
    required this.canContact,
    required this.teamsCount,
    required this.canAccessStatsAllPeriods,
    required this.canSetFavorite,
    required this.canFilterByEquipment,
    required this.canAutomaticallyUpdateNextTraining,
    required this.canCreateExercise,
    required this.canCreateFreeTraining,
    required this.canLogActivity,
    required this.canShowCustomers,
    required this.canDeleteAccount,
    required this.subscriptionsDisabled,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'] as int,
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      info: json['info'] as String,
      email: json['email'] as String,
      picture: (json['picture'] as List<dynamic>)
          .map((e) => AzeooImage.fromJson(e as Map<String, dynamic>))
          .toList(),
      accountType: json['account_type'] as String,
      accountTypeClub: json['account_type_club'],
      countryFlag: json['country_flag'] as String,
      points: json['points'] as int,
      badgesCount: json['badges_count'] as int,
      badges: (json['badges'] as List<dynamic>)
          .map((e) => Badge.fromJson(e as Map<String, dynamic>))
          .toList(),
      skills: (json['skills'] as List<dynamic>)
          .map((e) => Skill.fromJson(e as Map<String, dynamic>))
          .toList(),
      isFollowing: json['is_following'] as bool?,
      coachAttachmentState: json['coach_attachment_state'],
      isPublicCoach: json['is_public_coach'] as bool,
      birthday: Birthday.fromJson(json['birthday'] as Map<String, dynamic>),
      gender: json['gender'] as String,
      bmr: json['bmr'] as String,
      height: json['height'] as int,
      formattedHeight: json['formatted_height'] as String,
      weight: (json['weight'] as num).toDouble(),
      formattedWeight: json['formatted_weight'] as String,
      weightGoal: json['weight_goal'] as int,
      formattedWeightGoal: json['formatted_weight_goal'] as String,
      level: json['level'] as String,
      goal: UserGoal.fromJson(json['goal'] as Map<String, dynamic>),
      city: UserCity.fromJson(json['city'] as Map<String, dynamic>),
      countryCode: json['country_code'] as String,
      language: json['language'] as String,
      location: UserLocation.fromJson(json['location'] as Map<String, dynamic>),
      isFollower: json['is_follower'] as bool?,
      followersCount: json['followers_count'] as int,
      workoutsCount: json['workouts_count'] as int,
      feedsCount: json['feeds_count'] as int,
      recentActivity: (json['recent_activity'] as List<dynamic>)
          .map((e) => RecentActivity.fromJson(e as Map<String, dynamic>))
          .toList(),
      programsCount: json['programs_count'] as int,
      programs: (json['programs'] as List<dynamic>)
          .map((e) => UserProgramSimplified.fromJson(e as Map<String, dynamic>))
          .toList(),
      coach: json['coach'],
      clubs: (json['clubs'] as List<dynamic>)
          .map((e) => ClubSimplified.fromJson(e as Map<String, dynamic>))
          .toList(),
      coachs: json['coachs'],
      teams: json['teams'],
      quotes: json['quotes'] as String,
      about: json['about'] as String,
      aboutDiet: json['about_diet'],
      aboutTraining: json['about_training'],
      aboutTrainingSchedule: json['about_training_schedule'],
      contacts: Contacts.fromJson(json['contacts'] as Map<String, dynamic>),
      isEmailVerified: json['is_email_verified'] as bool,
      isSetupDone: json['is_setup_done'] as bool,
      setupFields: SetupFields.fromJson(json['setup_fields'] as Map<String, dynamic>),
      isTest: json['is_test'] as bool,
      hasCometchatAccount: json['has_cometchat_account'] as bool,
      chatEnabled: json['chat_enabled'] as bool,
      trainingPermission: json['training_permission'] as String,
      nutritionPermission: json['nutrition_permission'] as String,
      clubsPermission: json['clubs_permission'] as String,
      coachsPermission: json['coachs_permission'] as String,
      bodyPermission: json['body_permission'] as String,
      leaderboardDisabled: json['leaderboard_disabled'] as bool,
      subscriptions: (json['subscriptions'] as List<dynamic>), // Handle with care
      subscription: Subscription.fromJson(json['subscription'] as Map<String, dynamic>),
      whiteLabels: (json['white_labels'] as List<dynamic>)
          .map((e) => WhiteLabel.fromJson(e as Map<String, dynamic>))
          .toList(),
      ssoOneconciergerieEnabled: json['sso_oneconciergerie_enabled'] as bool,
      timezone: json['timezone'] as String,
      premiumLabel: json['premium_label'],
      disabledPremium: json['disabled_premium'] as bool,
      diagoLink: json['diago_link'],
      invoicesLink: json['invoices_link'],
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      lastActivity: DateTime.parse(json['last_activity'] as String),
      contents: (json['contents'] as List<dynamic>)
          .map((e) => Content.fromJson(e as Map<String, dynamic>))
          .toList(),
      canContact: json['can_contact'] as bool,
      teamsCount: json['teams_count'] as int,
      canAccessStatsAllPeriods: json['can_access_stats_all_periods'] as bool,
      canSetFavorite: json['can_set_favorite'] as bool,
      canFilterByEquipment: json['can_filter_by_equipment'] as bool,
      canAutomaticallyUpdateNextTraining: json['can_automatically_update_next_training'] as bool,
      canCreateExercise: json['can_create_exercise'] as bool,
      canCreateFreeTraining: json['can_create_free_training'] as bool,
      canLogActivity: json['can_log_activity'] as bool,
      canShowCustomers: json['can_show_customers'] as bool,
      canDeleteAccount: json['can_delete_account'] as bool,
      subscriptionsDisabled: json['subscriptions_disabled'] as bool,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'first_name': firstName,
      'last_name': lastName,
      'info': info,
      'email': email,
      'picture': picture.map((e) => e.toJson()).toList(),
      'account_type': accountType,
      'account_type_club': accountTypeClub,
      'country_flag': countryFlag,
      'points': points,
      'badges_count': badgesCount,
      'badges': badges.map((e) => e.toJson()).toList(),
      'skills': skills.map((e) => e.toJson()).toList(),
      'is_following': isFollowing,
      'coach_attachment_state': coachAttachmentState,
      'is_public_coach': isPublicCoach,
      'birthday': birthday.toJson(),
      'gender': gender,
      'bmr': bmr,
      'height': height,
      'formatted_height': formattedHeight,
      'weight': weight,
      'formatted_weight': formattedWeight,
      'weight_goal': weightGoal,
      'formatted_weight_goal': formattedWeightGoal,
      'level': level,
      'goal': goal.toJson(),
      'city': city.toJson(),
      'country_code': countryCode,
      'language': language,
      'location': location.toJson(),
      'is_follower': isFollower,
      'followers_count': followersCount,
      'workouts_count': workoutsCount,
      'feeds_count': feedsCount,
      'recent_activity': recentActivity.map((e) => e.toJson()).toList(),
      'programs_count': programsCount,
      'programs': programs.map((e) => e.toJson()).toList(),
      'coach': coach,
      'clubs': clubs.map((e) => e.toJson()).toList(),
      'coachs': coachs,
      'teams': teams,
      'quotes': quotes,
      'about': about,
      'about_diet': aboutDiet,
      'about_training': aboutTraining,
      'about_training_schedule': aboutTrainingSchedule,
      'contacts': contacts.toJson(),
      'is_email_verified': isEmailVerified,
      'is_setup_done': isSetupDone,
      'setup_fields': setupFields.toJson(),
      'is_test': isTest,
      'has_cometchat_account': hasCometchatAccount,
      'chat_enabled': chatEnabled,
      'training_permission': trainingPermission,
      'nutrition_permission': nutritionPermission,
      'clubs_permission': clubsPermission,
      'coachs_permission': coachsPermission,
      'body_permission': bodyPermission,
      'leaderboard_disabled': leaderboardDisabled,
      'subscriptions': subscriptions,
      'subscription': subscription.toJson(),
      'white_labels': whiteLabels.map((e) => e.toJson()).toList(),
      'sso_oneconciergerie_enabled': ssoOneconciergerieEnabled,
      'timezone': timezone,
      'premium_label': premiumLabel,
      'disabled_premium': disabledPremium,
      'diago_link': diagoLink,
      'invoices_link': invoicesLink,
      'created_at': createdAt.toIso8601String(),
      'updated_at': updatedAt.toIso8601String(),
      'last_activity': lastActivity.toIso8601String(),
      'contents': contents.map((e) => e.toJson()).toList(),
      'can_contact': canContact,
      'teams_count': teamsCount,
      'can_access_stats_all_periods': canAccessStatsAllPeriods,
      'can_set_favorite': canSetFavorite,
      'can_filter_by_equipment': canFilterByEquipment,
      'can_automatically_update_next_training': canAutomaticallyUpdateNextTraining,
      'can_create_exercise': canCreateExercise,
      'can_create_free_training': canCreateFreeTraining,
      'can_log_activity': canLogActivity,
      'can_show_customers': canShowCustomers,
      'can_delete_account': canDeleteAccount,
      'subscriptions_disabled': subscriptionsDisabled,
    };
  }
}

class AzeooImage {
  final String? url;
  final String? label;

  AzeooImage({this.url, this.label});

  factory AzeooImage.fromJson(Map<String, dynamic> json) {
    return AzeooImage(url: json['url'] as String?, label: json['label'] as String?);
  }

  Map<String, dynamic> toJson() {
    return {
      'url': url,
      'label': label,
    };
  }
}

class Badge {
  final int id;
  final String? name;
  final String? description;
  final String? date;
  final int count;
  final List<AzeooImage> images;

  Badge({
    required this.id,
    this.name,
    this.description,
    this.date,
    required  this.count,
    required this.images,
  });

  factory Badge.fromJson(Map<String, dynamic> json) {
    return Badge(
      id: json['id'] as int,
      name: json['name'] as String,
      description: json['description'] as String,
      date: json['date'] as String,
      count: json['count'] as int,
      images: (json['images'] as List<dynamic>)
          .map((e) => AzeooImage.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'date': date,
      'count': count,
      'images': images.map((e) => e.toJson()).toList(),
    };
  }
}

class Skill {
  final String? id;
  final String? name;

  Skill({this.id, this.name});

  factory Skill.fromJson(Map<String, dynamic> json) {
    return Skill(id: json['id'] as String, name: json['name'] as String);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
    };
  }
}

class Birthday {
  final String? value;
  final String? permission;

  Birthday({this.value, this.permission});

  factory Birthday.fromJson(Map<String, dynamic> json) {
    return Birthday(value: json['value'] as String, permission: json['permission'] as String);
  }

  Map<String, dynamic> toJson() {
    return {
      'value': value,
      'permission': permission,
    };
  }
}

class UserGoal {
  final String? value;
  final String? permission;

  UserGoal({this.value, this.permission});

  factory UserGoal.fromJson(Map<String, dynamic> json) {
    return UserGoal(value: json['value'] as String, permission: json['permission'] as String);
  }

  Map<String, dynamic> toJson() {
    return {
      'value': value,
      'permission': permission,
    };
  }
}

class UserCity {
  final String? value;
  final String? permission;

  UserCity({this.value, this.permission});

  factory UserCity.fromJson(Map<String, dynamic> json) {
    return UserCity(value: json['value'] as String, permission: json['permission'] as String);
  }

  Map<String, dynamic> toJson() {
    return {
      'value': value,
      'permission': permission,
    };
  }
}

class UserLocation {
  final double lng;
  final double lat;

  UserLocation({required this.lng, required this.lat});

  factory UserLocation.fromJson(Map<String, dynamic> json) {
    return UserLocation(lng: (json['lng'] as num).toDouble(), lat: (json['lat'] as num).toDouble());
  }

  Map<String, dynamic> toJson() {
    return {
      'lng': lng,
      'lat': lat,
    };
  }
}

class RecentActivity {
  final String? date;
  final int duration;

  RecentActivity({this.date, required this.duration});

  factory RecentActivity.fromJson(Map<String, dynamic> json) {
   return RecentActivity(date: json['date'] as String, duration: json['duration'] as int);
  }

  Map<String, dynamic> toJson() {
    return {
      'date': date,
      'duration': duration,
    };
  }
}

class UserProgramSimplified {
  final int id;
  final String? object;
  final Program? program;
  final ProgramVersion? version;
  final String? startedAt;
  final String? endedAt;
  final String? state;
  final int achievement;
  final String? achievementDays;
  final String? createdAt;
  final String? updatedAt;

  UserProgramSimplified({
    required this.id,
    this.object,
    this.program,
    this.version,
    this.startedAt,
    this.endedAt,
    this.state,
    required this.achievement,
    this.achievementDays,
    this.createdAt,
    this.updatedAt,
  });

  factory UserProgramSimplified.fromJson(Map<String, dynamic> json) {
    return UserProgramSimplified(
      id: json['id'] as int,
      object: json['object'] as String,
      program: json['program'] != '' ? Program.fromJson(json['program'] as Map<String, dynamic>) : null,
      version: json['version'] != '' ? ProgramVersion.fromJson(json['version'] as Map<String, dynamic>) : null,
      startedAt: json['started_at'] as String,
      endedAt: json['ended_at'] as String?,
      state: json['state'] as String,
      achievement: json['achievement'] as int,
      achievementDays: json['achievement_days'] as String,
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'object': object,
      'program': program?.toJson(),
      'version': version?.toJson(),
      'started_at': startedAt,
      'ended_at': endedAt,
      'state': state,
      'achievement': achievement,
      'achievement_days': achievementDays,
      'created_at': createdAt,
      'updated_at': updatedAt,
    };
  }
}

class Program {
  final int id;
  final String? name;
  final dynamic caption;
  final dynamic isDeleted;
  final dynamic isFavorite;
  final bool canFavorite;
  final String? url;
  final dynamic purchase;
  final dynamic purchaseV2;
  final bool isPremium;
  final bool needSubscription;
  final dynamic subscriptionsInfo;
  final dynamic totalDays;
  final int totalWeeks;
  final ProgramAuthor? author;
  final String? type;
  final List<AzeooImage>? images;
  final String? nameFr; // Optional
  final String? captionFr; // Optional

  Program({
    required this.id,
    this.name,
    this.caption,
    this.isDeleted,
    this.isFavorite,
    required  this.canFavorite,
    this.url,
    this.purchase,
    this.purchaseV2,
    required  this.isPremium,
    required  this.needSubscription,
    this.subscriptionsInfo,
    this.totalDays,
    required  this.totalWeeks,
    this.author,
    this.type,
    this.images,
    this.nameFr,
    this.captionFr,
  });

  factory Program.fromJson(Map<String, dynamic> json) {
    return Program(
      id: json['id'] as int,
      name: json['name'] as String?,
      caption: json['caption'],
      isDeleted: json['is_deleted'],
      isFavorite: json['is_favorite'],
      canFavorite: json['can_favorite'] as bool,
      url: json['url'] as String?,
      purchase: json['purchase'],
      purchaseV2: json['purchase_v2'],
      isPremium: json['is_premium'] as bool,
      needSubscription: json['need_subscription'] as bool,
      subscriptionsInfo: json['subscriptions_info'],
      totalDays: json['total_days'],
      totalWeeks: json['total_weeks'] as int,
      author: ProgramAuthor.fromJson(json['author'] as Map<String, dynamic>),
      type: json['type'] as String?,
      images: (json['images'] as List<dynamic>)
          .map((e) => AzeooImage.fromJson(e as Map<String, dynamic>))
          .toList(),
      nameFr: json['name_fr'] as String?,
      captionFr: json['caption_fr'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'caption': caption,
      'is_deleted': isDeleted,
      'is_favorite': isFavorite,
      'can_favorite': canFavorite,
      'url': url,
      'purchase': purchase,
      'purchase_v2': purchaseV2,
      'is_premium': isPremium,
      'need_subscription': needSubscription,
      'subscriptions_info': subscriptionsInfo,
      'total_days': totalDays,
      'total_weeks': totalWeeks,
      'author': author?.toJson(),
      'type': type,
      'images': images?.map((e) => e.toJson()).toList(),
      'name_fr': nameFr,
      'caption_fr': captionFr,
    };
  }
}

class ProgramAuthor {
  final int id;
  final String? name;
  final bool? isGhost;
  final bool? isManager;
  final bool? isCoach;
  final List<AzeooImage>? photos;
  final String? type; // Can be null

  ProgramAuthor({
    required this.id,
    this.name,
    this.isGhost,
    this.isManager,
    this.isCoach,
    this.photos,
    this.type
  });

  factory ProgramAuthor.fromJson(Map<String, dynamic> json) {
    return ProgramAuthor(
        id: json['id'] as int,
        name: json['name'] as String,
        isGhost: json['is_ghost'] as bool,
        isManager: json['is_manager'] as bool,
        isCoach: json['is_coach'] as bool,
        photos: (json['photos'] as List<dynamic>)
            .map((e) => AzeooImage.fromJson(e as Map<String, dynamic>))
            .toList(),
        type: json['type'] as String?
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'is_ghost': isGhost,
      'is_manager': isManager,
      'is_coach': isCoach,
      'photos': photos?.map((e) => e.toJson()).toList(),
      'type': type,
    };
  }
}

class ProgramVersion {
  final int id;
  final String? name;

  ProgramVersion({required this.id, this.name});

  factory ProgramVersion.fromJson(Map<String, dynamic> json) {
    return ProgramVersion(id: json['id'] as int, name: json['name'] as String);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
    };
  }
}

class ClubSimplified {
  final int id;
  final String? object;
  final dynamic parentId;
  final dynamic memberId;
  final bool hasMemberId;
  final String? name;
  final dynamic shortName;
  final String? url;
  final dynamic city;
  final String? countryCode;
  final String? countryFlag;
  final dynamic formattedAddress;
  final dynamic distance;
  final String? membershipState;
  final dynamic connectorType;
  final bool historyEnabled;
  final dynamic connector;
  final bool qrcodeEnabled;
  final dynamic qrcodeType;
  final dynamic qrcodeUrl;
  final dynamic booking;
  final dynamic bookingUrl;
  final bool hasVideoClasses;
  final bool zfitnessEnabled;
  final bool lesmillsEnabled;
  final bool chatEnabled;
  final int? maxAthlete;
  final bool? bookingEnabled;
  final int? bookingsCount;
  final bool? diagoLinkEnabled;
  final bool? invoicesLinkEnabled;
  final bool? externalProductsEnabled;
  final bool? isGhost;
  final dynamic whiteLabel;
  final bool? stripeEnabled;
  final bool? shopifyEnabled;
  final bool? nutritionPlanAdditionnalDataEnabled;
  final String? timezone;
  final bool? isMember;
  final bool? isManager;
  final bool? isCoach;
  final String? type;
  final String? accountType;
  final List<AzeooImage> photos;
  final List<dynamic> subscriptions;
  final dynamic coachs;

  ClubSimplified({
    required this.id,
    this.object,
    this.parentId,
    this.memberId,
    required this.hasMemberId,
    this.name,
    this.shortName,
    this.url,
    this.city,
    this.countryCode,
    this.countryFlag,
    this.formattedAddress,
    this.distance,
    this.membershipState,
    this.connectorType,
    required this.historyEnabled,
    this.connector,
    required this.qrcodeEnabled,
    this.qrcodeType,
    this.qrcodeUrl,
    this.booking,
    this.bookingUrl,
    required this.hasVideoClasses,
    required this.zfitnessEnabled,
    required this.lesmillsEnabled,
    required this.chatEnabled,
    this.maxAthlete,
    required this.bookingEnabled,
    this.bookingsCount,
    required this.diagoLinkEnabled,
    required this.invoicesLinkEnabled,
    required this.externalProductsEnabled,
    required this.isGhost,
    this.whiteLabel,
    required this.stripeEnabled,
    required this.shopifyEnabled,
    required this.nutritionPlanAdditionnalDataEnabled,
    this.timezone,
    required this.isMember,
    required this.isManager,
    required this.isCoach,
    this.type,
    this.accountType,
    required this.photos,
    required this.subscriptions,
    this.coachs,
  });

  factory ClubSimplified.fromJson(Map<String, dynamic> json) {
    return ClubSimplified(
      id: json['id'] as int,
      object: json['object'] as String?,
      parentId: json['parent_id'],
      memberId: json['member_id'],
      hasMemberId: json['has_member_id'] as bool,
      name: json['name'] as String?,
      shortName: json['short_name'],
      url: json['url'] as String?,
      city: json['city'],
      countryCode: json['country_code'] as String?,
      countryFlag: json['country_flag'] as String?,
      formattedAddress: json['formatted_address'],
      distance: json['distance'],
      membershipState: json['membership_state'] as String?,
      connectorType: json['connector_type'],
      historyEnabled: json['history_enabled'] as bool,
      connector: json['connector'],
      qrcodeEnabled: json['qrcode_enabled'] as bool,
      qrcodeType: json['qrcode_type'],
      qrcodeUrl: json['qrcode_url'],
      booking: json['booking'],
      bookingUrl: json['booking_url'],
      hasVideoClasses: json['has_video_classes'] as bool,
      zfitnessEnabled: json['zfitness_enabled'] as bool,
      lesmillsEnabled: json['lesmills_enabled'] as bool,
      chatEnabled: json['chat_enabled'] as bool,
      maxAthlete: json['max_athlete'] as int?,
      bookingEnabled: json['booking_enabled'] as bool,
      bookingsCount: json['bookings_count'] as int?,
      diagoLinkEnabled: json['diago_link_enabled'] as bool,
      invoicesLinkEnabled: json['invoices_link_enabled'] as bool?,
      externalProductsEnabled: json['external_products_enabled'] as bool?,
      isGhost: json['is_ghost'] as bool?,
      whiteLabel: json['white_label'],
      stripeEnabled: json['stripe_enabled'] as bool,
      shopifyEnabled: json['shopify_enabled'] as bool?,
      nutritionPlanAdditionnalDataEnabled: json['nutrition_plan_additionnal_data_enabled'] as bool?,
      timezone: json['timezone'] as String?,
      isMember: json['is_member'] as bool?,
      isManager: json['is_manager'] as bool?,
      isCoach: json['is_coach'] as bool?,
      type: json['type'] as String?,
      accountType: json['account_type'] as String?,
      photos: (json['photos'] as List<dynamic>)
          .map((e) => AzeooImage.fromJson(e as Map<String, dynamic>))
          .toList(),
      subscriptions: (json['subscriptions'] as List<dynamic>),
      coachs: json['coachs'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'object': object,
      'parent_id': parentId,
      'member_id': memberId,
      'has_member_id': hasMemberId,
      'name': name,
      'short_name': shortName,
      'url': url,
      'city': city,
      'country_code': countryCode,
      'country_flag': countryFlag,
      'formatted_address': formattedAddress,
      'distance': distance,
      'membership_state': membershipState,
      'connector_type': connectorType,
      'history_enabled': historyEnabled,
      'connector': connector,
      'qrcode_enabled': qrcodeEnabled,
      'qrcode_type': qrcodeType,
      'qrcode_url': qrcodeUrl,
      'booking': booking,
      'booking_url': bookingUrl,
      'has_video_classes': hasVideoClasses,
      'zfitness_enabled': zfitnessEnabled,
      'lesmills_enabled': lesmillsEnabled,
      'chat_enabled': chatEnabled,
      'max_athlete': maxAthlete,
      'booking_enabled': bookingEnabled,
      'bookings_count': bookingsCount,
      'diago_link_enabled': diagoLinkEnabled,
      'invoices_link_enabled': invoicesLinkEnabled,
      'external_products_enabled': externalProductsEnabled,
      'is_ghost': isGhost,
      'white_label': whiteLabel,
      'stripe_enabled': stripeEnabled,
      'shopify_enabled': shopifyEnabled,
      'nutrition_plan_additionnal_data_enabled': nutritionPlanAdditionnalDataEnabled,
      'timezone': timezone,
      'is_member': isMember,
      'is_manager': isManager,
      'is_coach': isCoach,
      'type': type,
      'account_type': accountType,
      'photos': photos.map((e) => e.toJson()).toList(),
      'subscriptions': subscriptions,
      'coachs': coachs,
    };
  }
}

class Contacts {
  final dynamic twitter;
  final dynamic facebook;
  final dynamic instagram;
  final dynamic pinterest;
  final dynamic tiktok;
  final dynamic snapchat;
  final dynamic youtube;
  final dynamic website;
  final dynamic email;
  final dynamic phone;

  Contacts({
    this.twitter,
    this.facebook,
    this.instagram,
    this.pinterest,
    this.tiktok,
    this.snapchat,
    this.youtube,
    this.website,
    this.email,
    this.phone,
  });

  factory Contacts.fromJson(Map<String, dynamic> json) {
    return Contacts(
      twitter: json['twitter'],
      facebook: json['facebook'],
      instagram: json['instagram'],
      pinterest: json['pinterest'],
      tiktok: json['tiktok'],
      snapchat: json['snapchat'],
      youtube: json['youtube'],
      website: json['website'],
      email: json['email'],
      phone: json['phone'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'twitter': twitter,
      'facebook': facebook,
      'instagram': instagram,
      'pinterest': pinterest,
      'tiktok': tiktok,
      'snapchat': snapchat,
      'youtube': youtube,
      'website': website,
      'email': email,
      'phone': phone,
    };
  }
}

class SetupFields {
  final bool? password;
  final bool? clubId;
  final bool? birthday;
  final bool? gender;
  final bool? level;
  final bool? goal;

  SetupFields({
    this.password,
    this.clubId,
    this.birthday,
    this.gender,
    this.level,
    this.goal,
  });

  factory SetupFields.fromJson(Map<String, dynamic> json) {
    return SetupFields(
      password: json['password'] as bool,
      clubId: json['club_id'] as bool,
      birthday: json['birthday'] as bool,
      gender: json['gender'] as bool,
      level: json['level'] as bool,
      goal: json['goal'] as bool,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'password': password,
      'club_id': clubId,
      'birthday': birthday,
      'gender': gender,
      'level': level,
      'goal': goal,
    };
  }
}

class Subscription {
  final String? name;
  final String? sku;
  final bool? canCancel;
  final String? type;
  final int? status;
  final int? userId;
  final String? startedAt;
  final String? canceledAt;
  final String? endedAt;
  final bool? isTrial;
  // Other common fields can be added here

  Subscription({
    this.name,
    this.sku,
    this.canCancel,
    this.type,
    this.status,
    this.userId,
    this.startedAt,
    this.canceledAt,
    this.endedAt,
    this.isTrial
  });

  factory Subscription.fromJson(Map<String, dynamic> json) {
    return Subscription(
        name: json['name'] as String,
        sku: json['sku'] as String,
        canCancel: json['can_cancel'] as bool? ?? false, // Handle null
        type: json['type'] as String?,
        status: json['status'] as int?,
        userId: json['user_id'] as int?,
        startedAt: json['started_at'] as String?,
        canceledAt: json['canceled_at'] as String?,
        endedAt: json['ended_at'] as String?,
        isTrial: json['is_trial'] as bool?
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'sku': sku,
      'can_cancel': canCancel,
      'type': type,
      'status': status,
      'user_id': userId,
      'started_at': startedAt,
      'canceled_at': canceledAt,
      'ended_at': endedAt,
      'is_trial': isTrial,
    };
  }
}

class WhiteLabel {
  final int id;
  final String? key;

  WhiteLabel({required this.id, this.key});

  factory WhiteLabel.fromJson(Map<String, dynamic> json) {
    return WhiteLabel(id: json['id'] as int, key: json['key'] as String);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'key': key,
    };
  }
}

class Content {
  final String? name;
  final dynamic caption;
  final String? url;
  final String? type;
  final List<dynamic>? items; // Mixed list

  Content({
    this.name,
    this.caption,
    this.url,
    this.type,
    this.items,
  });

  factory Content.fromJson(Map<String, dynamic> json) {
    return Content(
      name: json['name'] as String,
      caption: json['caption'],
      url: json['url'] as String,
      type: json['type'] as String,
      items: json['items'] as List<dynamic>, // Handle with care
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'caption': caption,
      'url': url,
      'type': type,
      'items': items,
    };
  }
}

// User Nutrition Plan Simplified and related
class UserNutritionPlanSimplified {
  final int id;
  final String? object;
  final String? url;
  final NutritionPlan? nutritionPlan;
  final String? startedAt;
  final String? endedAt;
  final String? state;
  final String? createdAt;
  final String? updatedAt;

  UserNutritionPlanSimplified({
    required this.id,
    this.object,
    this.url,
    this.nutritionPlan,
    this.startedAt,
    this.endedAt,
    this.state,
    this.createdAt,
    this.updatedAt,
  });

  factory UserNutritionPlanSimplified.fromJson(Map<String, dynamic> json) {
    return UserNutritionPlanSimplified(
      id: json['id'] as int,
      object: json['object'] as String,
      url: json['url'] as String,
      nutritionPlan: NutritionPlan.fromJson(json['nutrition_plan'] as Map<String, dynamic>),
      startedAt: json['started_at'] as String,
      endedAt: json['ended_at'] as String,
      state: json['state'] as String,
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'object': object,
      'url': url,
      'nutrition_plan': nutritionPlan?.toJson(),
      'started_at': startedAt,
      'ended_at': endedAt,
      'state': state,
      'created_at': createdAt,
      'updated_at': updatedAt,
    };
  }
}

class NutritionPlan {
  final int id;
  final String? name;
  final dynamic isFavorite;
  final bool? canFavorite;
  final String? url;
  final dynamic purchaseV2;
  final bool? isPremium;
  final bool? needSubscription;
  final dynamic subscriptionsInfo;
  final dynamic totalDays;
  final int? totalWeeks;
  final ProgramAuthor? author;
  final List<AzeooImage>? images;

  NutritionPlan({
    required this.id,
    this.name,
    this.isFavorite,
    this.canFavorite,
    this.url,
    this.purchaseV2,
    this.isPremium,
    this.needSubscription,
    this.subscriptionsInfo,
    this.totalDays,
    this.totalWeeks,
    this.author,
    this.images,
  });

  factory NutritionPlan.fromJson(Map<String, dynamic> json) {
    return NutritionPlan(
      id: json['id'] as int,
      name: json['name'] as String,
      isFavorite: json['is_favorite'],
      canFavorite: json['can_favorite'] as bool,
      url: json['url'] as String,
      purchaseV2: json['purchase_v2'],
      isPremium: json['is_premium'] as bool,
      needSubscription: json['need_subscription'] as bool,
      subscriptionsInfo: json['subscriptions_info'],
      totalDays: json['total_days'],
      totalWeeks: json['total_weeks'] as int,
      author: ProgramAuthor.fromJson(json['author'] as Map<String, dynamic>),
      images: (json['images'] as List<dynamic>)
          .map((e) => AzeooImage.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'is_favorite': isFavorite,
      'can_favorite': canFavorite,
      'url': url,
      'purchase_v2': purchaseV2,
      'is_premium': isPremium,
      'need_subscription': needSubscription,
      'subscriptions_info': subscriptionsInfo,
      'total_days': totalDays,
      'total_weeks': totalWeeks,
      'author': author?.toJson(),
      'images': images?.map((e) => e.toJson()).toList(),
    };
  }
}

class FormSimplified {
  final int id;
  final String? share;
  final String? url;
  final String? name;
  final dynamic images; // Can be null
  final ProgramAuthor? author;
  final Coach? coach;
  final String? state;
  final int? stepsCount;
  final dynamic date; // Can be null
  final dynamic responseDate; // Can be null
  final String? createdAt;
  final dynamic trainingId; // Can be null
  final dynamic nutritionPlan; // Can be null
  final dynamic userProgram; // Can be null
  final dynamic userNutritionPlan; // Can be null

  FormSimplified({
    required this.id,
    this.share,
    this.url,
    this.name,
    this.images,
    this.author,
    this.coach,
    this.state,
    this.stepsCount,
    this.date,
    this.responseDate,
    this.createdAt,
    this.trainingId,
    this.nutritionPlan,
    this.userProgram,
    this.userNutritionPlan,
  });

  factory FormSimplified.fromJson(Map<String, dynamic> json) {
    return FormSimplified(
      id: json['id'] as int,
      share: json['share'] as String,
      url: json['url'] as String,
      name: json['name'] as String,
      images: json['images'],
      author: ProgramAuthor.fromJson(json['author'] as Map<String, dynamic>),
      coach: Coach.fromJson(json['coach'] as Map<String, dynamic>),
      state: json['state'] as String,
      stepsCount: json['steps_count'] as int,
      date: json['date'],
      responseDate: json['response_date'],
      createdAt: json['created_at'] as String,
      trainingId: json['training_id'],
      nutritionPlan: json['nutrition_plan'],
      userProgram: json['user_program'],
      userNutritionPlan: json['user_nutrition_plan'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'share': share,
      'url': url,
      'name': name,
      'images': images,
      'author': author?.toJson(),
      'coach': coach?.toJson(),
      'state': state,
      'steps_count': stepsCount,
      'date': date,
      'response_date': responseDate,
      'created_at': createdAt,
      'training_id': trainingId,
      'nutrition_plan': nutritionPlan,
      'user_program': userProgram,
      'user_nutrition_plan': userNutritionPlan,
    };
  }
}

class Coach {
  final int id;
  final String? firstName;
  final String? lastName;
  final List<AzeooImage>? picture;
  final String? accountType;
  final bool? isFollowing;
  final dynamic coachAttachmentState;
  final String? gender;
  final String? type;

  Coach({
    required this.id,
    this.firstName,
    this.lastName,
    this.picture,
    this.accountType,
    this.isFollowing,
    this.coachAttachmentState,
    this.gender,
    this.type,
  });

  factory Coach.fromJson(Map<String, dynamic> json) {
    return Coach(
      id: json['id'] as int,
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      picture: (json['picture'] as List<dynamic>)
          .map((e) => AzeooImage.fromJson(e as Map<String, dynamic>))
          .toList(),
      accountType: json['account_type'] as String,
      isFollowing: json['is_following'] as bool,
      coachAttachmentState: json['coach_attachment_state'],
      gender: json['gender'] as String,
      type: json['type'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'first_name': firstName,
      'last_name': lastName,
      'picture': picture?.map((e) => e.toJson()).toList(),
      'account_type': accountType,
      'is_following': isFollowing,
      'coach_attachment_state': coachAttachmentState,
      'gender': gender,
      'type': type,
    };
  }
}

