// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
  id: (json['id'] as num).toInt(),
  firstName: json['firstName'] as String?,
  lastName: json['lastName'] as String?,
  info: json['info'] as String?,
  email: json['email'] as String?,
  picture:
      (json['picture'] as List<dynamic>)
          .map((e) => AzeooImage.fromJson(e as Map<String, dynamic>))
          .toList(),
  accountType: json['accountType'] as String?,
  accountTypeClub: json['accountTypeClub'],
  countryFlag: json['countryFlag'] as String?,
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
  isFollowing: json['isFollowing'] as bool?,
  coachAttachmentState: json['coachAttachmentState'],
  isPublicCoach: json['isPublicCoach'] as bool,
  birthday: Birthday.fromJson(json['birthday'] as Map<String, dynamic>),
  gender: json['gender'] as String?,
  bmr: json['bmr'] as String?,
  height: (json['height'] as num).toInt(),
  formattedHeight: json['formattedHeight'] as String?,
  weight: (json['weight'] as num).toDouble(),
  formattedWeight: json['formattedWeight'] as String?,
  weightGoal: (json['weightGoal'] as num).toInt(),
  formattedWeightGoal: json['formattedWeightGoal'] as String?,
  level: json['level'] as String?,
  goal: UserGoal.fromJson(json['goal'] as Map<String, dynamic>),
  city: UserCity.fromJson(json['city'] as Map<String, dynamic>),
  countryCode: json['countryCode'] as String?,
  language: json['language'] as String?,
  location: UserLocation.fromJson(json['location'] as Map<String, dynamic>),
  isFollower: json['isFollower'] as bool?,
  followersCount: (json['followersCount'] as num).toInt(),
  workoutsCount: (json['workoutsCount'] as num).toInt(),
  feedsCount: (json['feedsCount'] as num).toInt(),
  recentActivity:
      (json['recentActivity'] as List<dynamic>)
          .map((e) => RecentActivity.fromJson(e as Map<String, dynamic>))
          .toList(),
  programsCount: (json['programsCount'] as num).toInt(),
  programs:
      (json['programs'] as List<dynamic>)
          .map((e) => UserProgramSimplified.fromJson(e as Map<String, dynamic>))
          .toList(),
  coach: json['coach'],
  clubs:
      (json['clubs'] as List<dynamic>)
          .map((e) => ClubSimplified.fromJson(e as Map<String, dynamic>))
          .toList(),
  coachs: json['coachs'],
  teams: json['teams'],
  quotes: json['quotes'] as String?,
  about: json['about'] as String?,
  aboutDiet: json['aboutDiet'],
  aboutTraining: json['aboutTraining'],
  aboutTrainingSchedule: json['aboutTrainingSchedule'],
  contacts: Contacts.fromJson(json['contacts'] as Map<String, dynamic>),
  isEmailVerified: json['isEmailVerified'] as bool,
  isSetupDone: json['isSetupDone'] as bool,
  setupFields: SetupFields.fromJson(
    json['setupFields'] as Map<String, dynamic>,
  ),
  isTest: json['isTest'] as bool,
  hasCometchatAccount: json['hasCometchatAccount'] as bool,
  chatEnabled: json['chatEnabled'] as bool,
  trainingPermission: json['trainingPermission'] as String?,
  nutritionPermission: json['nutritionPermission'] as String?,
  clubsPermission: json['clubsPermission'] as String?,
  coachsPermission: json['coachsPermission'] as String?,
  bodyPermission: json['bodyPermission'] as String?,
  leaderboardDisabled: json['leaderboardDisabled'] as bool,
  subscriptions: json['subscriptions'] as List<dynamic>,
  subscription: Subscription.fromJson(
    json['subscription'] as Map<String, dynamic>,
  ),
  whiteLabels:
      (json['whiteLabels'] as List<dynamic>)
          .map((e) => WhiteLabel.fromJson(e as Map<String, dynamic>))
          .toList(),
  ssoOneconciergerieEnabled: json['ssoOneconciergerieEnabled'] as bool,
  timezone: json['timezone'] as String?,
  premiumLabel: json['premiumLabel'],
  disabledPremium: json['disabledPremium'] as bool,
  diagoLink: json['diagoLink'],
  invoicesLink: json['invoicesLink'],
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
  lastActivity: DateTime.parse(json['lastActivity'] as String),
  contents:
      (json['contents'] as List<dynamic>)
          .map((e) => Content.fromJson(e as Map<String, dynamic>))
          .toList(),
  canContact: json['canContact'] as bool,
  teamsCount: (json['teamsCount'] as num).toInt(),
  canAccessStatsAllPeriods: json['canAccessStatsAllPeriods'] as bool,
  canSetFavorite: json['canSetFavorite'] as bool,
  canFilterByEquipment: json['canFilterByEquipment'] as bool,
  canAutomaticallyUpdateNextTraining:
      json['canAutomaticallyUpdateNextTraining'] as bool,
  canCreateExercise: json['canCreateExercise'] as bool,
  canCreateFreeTraining: json['canCreateFreeTraining'] as bool,
  canLogActivity: json['canLogActivity'] as bool,
  canShowCustomers: json['canShowCustomers'] as bool,
  canDeleteAccount: json['canDeleteAccount'] as bool,
  subscriptionsDisabled: json['subscriptionsDisabled'] as bool,
);

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
  'id': instance.id,
  'firstName': instance.firstName,
  'lastName': instance.lastName,
  'info': instance.info,
  'email': instance.email,
  'picture': instance.picture.map((e) => e.toJson()).toList(),
  'accountType': instance.accountType,
  'accountTypeClub': instance.accountTypeClub,
  'countryFlag': instance.countryFlag,
  'points': instance.points,
  'badgesCount': instance.badgesCount,
  'badges': instance.badges.map((e) => e.toJson()).toList(),
  'skills': instance.skills.map((e) => e.toJson()).toList(),
  'isFollowing': instance.isFollowing,
  'coachAttachmentState': instance.coachAttachmentState,
  'isPublicCoach': instance.isPublicCoach,
  'birthday': instance.birthday.toJson(),
  'gender': instance.gender,
  'bmr': instance.bmr,
  'height': instance.height,
  'formattedHeight': instance.formattedHeight,
  'weight': instance.weight,
  'formattedWeight': instance.formattedWeight,
  'weightGoal': instance.weightGoal,
  'formattedWeightGoal': instance.formattedWeightGoal,
  'level': instance.level,
  'goal': instance.goal.toJson(),
  'city': instance.city.toJson(),
  'countryCode': instance.countryCode,
  'language': instance.language,
  'location': instance.location.toJson(),
  'isFollower': instance.isFollower,
  'followersCount': instance.followersCount,
  'workoutsCount': instance.workoutsCount,
  'feedsCount': instance.feedsCount,
  'recentActivity': instance.recentActivity.map((e) => e.toJson()).toList(),
  'programsCount': instance.programsCount,
  'programs': instance.programs.map((e) => e.toJson()).toList(),
  'coach': instance.coach,
  'clubs': instance.clubs.map((e) => e.toJson()).toList(),
  'coachs': instance.coachs,
  'teams': instance.teams,
  'quotes': instance.quotes,
  'about': instance.about,
  'aboutDiet': instance.aboutDiet,
  'aboutTraining': instance.aboutTraining,
  'aboutTrainingSchedule': instance.aboutTrainingSchedule,
  'contacts': instance.contacts.toJson(),
  'isEmailVerified': instance.isEmailVerified,
  'isSetupDone': instance.isSetupDone,
  'setupFields': instance.setupFields.toJson(),
  'isTest': instance.isTest,
  'hasCometchatAccount': instance.hasCometchatAccount,
  'chatEnabled': instance.chatEnabled,
  'trainingPermission': instance.trainingPermission,
  'nutritionPermission': instance.nutritionPermission,
  'clubsPermission': instance.clubsPermission,
  'coachsPermission': instance.coachsPermission,
  'bodyPermission': instance.bodyPermission,
  'leaderboardDisabled': instance.leaderboardDisabled,
  'subscriptions': instance.subscriptions,
  'subscription': instance.subscription.toJson(),
  'whiteLabels': instance.whiteLabels.map((e) => e.toJson()).toList(),
  'ssoOneconciergerieEnabled': instance.ssoOneconciergerieEnabled,
  'timezone': instance.timezone,
  'premiumLabel': instance.premiumLabel,
  'disabledPremium': instance.disabledPremium,
  'diagoLink': instance.diagoLink,
  'invoicesLink': instance.invoicesLink,
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt.toIso8601String(),
  'lastActivity': instance.lastActivity.toIso8601String(),
  'contents': instance.contents.map((e) => e.toJson()).toList(),
  'canContact': instance.canContact,
  'teamsCount': instance.teamsCount,
  'canAccessStatsAllPeriods': instance.canAccessStatsAllPeriods,
  'canSetFavorite': instance.canSetFavorite,
  'canFilterByEquipment': instance.canFilterByEquipment,
  'canAutomaticallyUpdateNextTraining':
      instance.canAutomaticallyUpdateNextTraining,
  'canCreateExercise': instance.canCreateExercise,
  'canCreateFreeTraining': instance.canCreateFreeTraining,
  'canLogActivity': instance.canLogActivity,
  'canShowCustomers': instance.canShowCustomers,
  'canDeleteAccount': instance.canDeleteAccount,
  'subscriptionsDisabled': instance.subscriptionsDisabled,
};

AzeooImage _$AzeooImageFromJson(Map<String, dynamic> json) =>
    AzeooImage(url: json['url'] as String?, label: json['label'] as String?);

Map<String, dynamic> _$AzeooImageToJson(AzeooImage instance) =>
    <String, dynamic>{'url': instance.url, 'label': instance.label};

Badge _$BadgeFromJson(Map<String, dynamic> json) => Badge(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String?,
  description: json['description'] as String?,
  date: json['date'] as String?,
  count: (json['count'] as num).toInt(),
  images:
      (json['images'] as List<dynamic>)
          .map((e) => AzeooImage.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$BadgeToJson(Badge instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'description': instance.description,
  'date': instance.date,
  'count': instance.count,
  'images': instance.images,
};

Skill _$SkillFromJson(Map<String, dynamic> json) =>
    Skill(id: json['id'] as String?, name: json['name'] as String?);

Map<String, dynamic> _$SkillToJson(Skill instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
};

Birthday _$BirthdayFromJson(Map<String, dynamic> json) => Birthday(
  value: json['value'] as String?,
  permission: json['permission'] as String?,
);

Map<String, dynamic> _$BirthdayToJson(Birthday instance) => <String, dynamic>{
  'value': instance.value,
  'permission': instance.permission,
};

UserGoal _$UserGoalFromJson(Map<String, dynamic> json) => UserGoal(
  value: json['value'] as String?,
  permission: json['permission'] as String?,
);

Map<String, dynamic> _$UserGoalToJson(UserGoal instance) => <String, dynamic>{
  'value': instance.value,
  'permission': instance.permission,
};

UserCity _$UserCityFromJson(Map<String, dynamic> json) => UserCity(
  value: json['value'] as String?,
  permission: json['permission'] as String?,
);

Map<String, dynamic> _$UserCityToJson(UserCity instance) => <String, dynamic>{
  'value': instance.value,
  'permission': instance.permission,
};

UserLocation _$UserLocationFromJson(Map<String, dynamic> json) => UserLocation(
  lng: (json['lng'] as num).toDouble(),
  lat: (json['lat'] as num).toDouble(),
);

Map<String, dynamic> _$UserLocationToJson(UserLocation instance) =>
    <String, dynamic>{'lng': instance.lng, 'lat': instance.lat};

RecentActivity _$RecentActivityFromJson(Map<String, dynamic> json) =>
    RecentActivity(
      date: json['date'] as String?,
      duration: (json['duration'] as num).toInt(),
    );

Map<String, dynamic> _$RecentActivityToJson(RecentActivity instance) =>
    <String, dynamic>{'date': instance.date, 'duration': instance.duration};

UserProgramSimplified _$UserProgramSimplifiedFromJson(
  Map<String, dynamic> json,
) => UserProgramSimplified(
  id: (json['id'] as num).toInt(),
  object: json['object'] as String?,
  program:
      json['program'] == null
          ? null
          : Program.fromJson(json['program'] as Map<String, dynamic>),
  version:
      json['version'] == null
          ? null
          : ProgramVersion.fromJson(json['version'] as Map<String, dynamic>),
  startedAt: json['startedAt'] as String?,
  endedAt: json['endedAt'] as String?,
  state: json['state'] as String?,
  achievement: (json['achievement'] as num).toInt(),
  achievementDays: json['achievementDays'] as String?,
  createdAt: json['createdAt'] as String?,
  updatedAt: json['updatedAt'] as String?,
);

Map<String, dynamic> _$UserProgramSimplifiedToJson(
  UserProgramSimplified instance,
) => <String, dynamic>{
  'id': instance.id,
  'object': instance.object,
  'program': instance.program,
  'version': instance.version,
  'startedAt': instance.startedAt,
  'endedAt': instance.endedAt,
  'state': instance.state,
  'achievement': instance.achievement,
  'achievementDays': instance.achievementDays,
  'createdAt': instance.createdAt,
  'updatedAt': instance.updatedAt,
};

Program _$ProgramFromJson(Map<String, dynamic> json) => Program(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String?,
  caption: json['caption'],
  isDeleted: json['isDeleted'],
  isFavorite: json['isFavorite'],
  canFavorite: json['canFavorite'] as bool,
  url: json['url'] as String?,
  purchase: json['purchase'],
  purchaseV2: json['purchaseV2'],
  isPremium: json['isPremium'] as bool,
  needSubscription: json['needSubscription'] as bool,
  subscriptionsInfo: json['subscriptionsInfo'],
  totalDays: json['totalDays'],
  totalWeeks: (json['totalWeeks'] as num).toInt(),
  author:
      json['author'] == null
          ? null
          : ProgramAuthor.fromJson(json['author'] as Map<String, dynamic>),
  type: json['type'] as String?,
  images:
      (json['images'] as List<dynamic>?)
          ?.map((e) => AzeooImage.fromJson(e as Map<String, dynamic>))
          .toList(),
  nameFr: json['nameFr'] as String?,
  captionFr: json['captionFr'] as String?,
);

Map<String, dynamic> _$ProgramToJson(Program instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'caption': instance.caption,
  'isDeleted': instance.isDeleted,
  'isFavorite': instance.isFavorite,
  'canFavorite': instance.canFavorite,
  'url': instance.url,
  'purchase': instance.purchase,
  'purchaseV2': instance.purchaseV2,
  'isPremium': instance.isPremium,
  'needSubscription': instance.needSubscription,
  'subscriptionsInfo': instance.subscriptionsInfo,
  'totalDays': instance.totalDays,
  'totalWeeks': instance.totalWeeks,
  'author': instance.author,
  'type': instance.type,
  'images': instance.images,
  'nameFr': instance.nameFr,
  'captionFr': instance.captionFr,
};

ProgramAuthor _$ProgramAuthorFromJson(Map<String, dynamic> json) =>
    ProgramAuthor(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String?,
      isGhost: json['isGhost'] as bool?,
      isManager: json['isManager'] as bool?,
      isCoach: json['isCoach'] as bool?,
      photos:
          (json['photos'] as List<dynamic>?)
              ?.map((e) => AzeooImage.fromJson(e as Map<String, dynamic>))
              .toList(),
      type: json['type'] as String?,
    );

Map<String, dynamic> _$ProgramAuthorToJson(ProgramAuthor instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'isGhost': instance.isGhost,
      'isManager': instance.isManager,
      'isCoach': instance.isCoach,
      'photos': instance.photos,
      'type': instance.type,
    };

ProgramVersion _$ProgramVersionFromJson(Map<String, dynamic> json) =>
    ProgramVersion(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$ProgramVersionToJson(ProgramVersion instance) =>
    <String, dynamic>{'id': instance.id, 'name': instance.name};

ClubSimplified _$ClubSimplifiedFromJson(Map<String, dynamic> json) =>
    ClubSimplified(
      id: (json['id'] as num).toInt(),
      object: json['object'] as String?,
      parentId: json['parentId'],
      memberId: json['memberId'],
      hasMemberId: json['hasMemberId'] as bool,
      name: json['name'] as String?,
      shortName: json['shortName'],
      url: json['url'] as String?,
      city: json['city'],
      countryCode: json['countryCode'] as String?,
      countryFlag: json['countryFlag'] as String?,
      formattedAddress: json['formattedAddress'],
      distance: json['distance'],
      membershipState: json['membershipState'] as String?,
      connectorType: json['connectorType'],
      historyEnabled: json['historyEnabled'] as bool,
      connector: json['connector'],
      qrcodeEnabled: json['qrcodeEnabled'] as bool,
      qrcodeType: json['qrcodeType'],
      qrcodeUrl: json['qrcodeUrl'],
      booking: json['booking'],
      bookingUrl: json['bookingUrl'],
      hasVideoClasses: json['hasVideoClasses'] as bool,
      zfitnessEnabled: json['zfitnessEnabled'] as bool,
      lesmillsEnabled: json['lesmillsEnabled'] as bool,
      chatEnabled: json['chatEnabled'] as bool,
      maxAthlete: (json['maxAthlete'] as num?)?.toInt(),
      bookingEnabled: json['bookingEnabled'] as bool,
      bookingsCount: (json['bookingsCount'] as num?)?.toInt(),
      diagoLinkEnabled: json['diagoLinkEnabled'] as bool,
      invoicesLinkEnabled: json['invoicesLinkEnabled'] as bool,
      externalProductsEnabled: json['externalProductsEnabled'] as bool,
      isGhost: json['isGhost'] as bool,
      whiteLabel: json['whiteLabel'],
      stripeEnabled: json['stripeEnabled'] as bool,
      shopifyEnabled: json['shopifyEnabled'] as bool,
      nutritionPlanAdditionnalDataEnabled:
          json['nutritionPlanAdditionnalDataEnabled'] as bool,
      timezone: json['timezone'] as String?,
      isMember: json['isMember'] as bool,
      isManager: json['isManager'] as bool,
      isCoach: json['isCoach'] as bool,
      type: json['type'] as String?,
      accountType: json['accountType'] as String?,
      photos:
          (json['photos'] as List<dynamic>)
              .map((e) => AzeooImage.fromJson(e as Map<String, dynamic>))
              .toList(),
      subscriptions: json['subscriptions'] as List<dynamic>,
      coachs: json['coachs'],
    );

Map<String, dynamic> _$ClubSimplifiedToJson(ClubSimplified instance) =>
    <String, dynamic>{
      'id': instance.id,
      'object': instance.object,
      'parentId': instance.parentId,
      'memberId': instance.memberId,
      'hasMemberId': instance.hasMemberId,
      'name': instance.name,
      'shortName': instance.shortName,
      'url': instance.url,
      'city': instance.city,
      'countryCode': instance.countryCode,
      'countryFlag': instance.countryFlag,
      'formattedAddress': instance.formattedAddress,
      'distance': instance.distance,
      'membershipState': instance.membershipState,
      'connectorType': instance.connectorType,
      'historyEnabled': instance.historyEnabled,
      'connector': instance.connector,
      'qrcodeEnabled': instance.qrcodeEnabled,
      'qrcodeType': instance.qrcodeType,
      'qrcodeUrl': instance.qrcodeUrl,
      'booking': instance.booking,
      'bookingUrl': instance.bookingUrl,
      'hasVideoClasses': instance.hasVideoClasses,
      'zfitnessEnabled': instance.zfitnessEnabled,
      'lesmillsEnabled': instance.lesmillsEnabled,
      'chatEnabled': instance.chatEnabled,
      'maxAthlete': instance.maxAthlete,
      'bookingEnabled': instance.bookingEnabled,
      'bookingsCount': instance.bookingsCount,
      'diagoLinkEnabled': instance.diagoLinkEnabled,
      'invoicesLinkEnabled': instance.invoicesLinkEnabled,
      'externalProductsEnabled': instance.externalProductsEnabled,
      'isGhost': instance.isGhost,
      'whiteLabel': instance.whiteLabel,
      'stripeEnabled': instance.stripeEnabled,
      'shopifyEnabled': instance.shopifyEnabled,
      'nutritionPlanAdditionnalDataEnabled':
          instance.nutritionPlanAdditionnalDataEnabled,
      'timezone': instance.timezone,
      'isMember': instance.isMember,
      'isManager': instance.isManager,
      'isCoach': instance.isCoach,
      'type': instance.type,
      'accountType': instance.accountType,
      'photos': instance.photos,
      'subscriptions': instance.subscriptions,
      'coachs': instance.coachs,
    };

Contacts _$ContactsFromJson(Map<String, dynamic> json) => Contacts(
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

Map<String, dynamic> _$ContactsToJson(Contacts instance) => <String, dynamic>{
  'twitter': instance.twitter,
  'facebook': instance.facebook,
  'instagram': instance.instagram,
  'pinterest': instance.pinterest,
  'tiktok': instance.tiktok,
  'snapchat': instance.snapchat,
  'youtube': instance.youtube,
  'website': instance.website,
  'email': instance.email,
  'phone': instance.phone,
};

SetupFields _$SetupFieldsFromJson(Map<String, dynamic> json) => SetupFields(
  password: json['password'] as bool?,
  clubId: json['clubId'] as bool?,
  birthday: json['birthday'] as bool?,
  gender: json['gender'] as bool?,
  level: json['level'] as bool?,
  goal: json['goal'] as bool?,
);

Map<String, dynamic> _$SetupFieldsToJson(SetupFields instance) =>
    <String, dynamic>{
      'password': instance.password,
      'clubId': instance.clubId,
      'birthday': instance.birthday,
      'gender': instance.gender,
      'level': instance.level,
      'goal': instance.goal,
    };

Subscription _$SubscriptionFromJson(Map<String, dynamic> json) => Subscription(
  name: json['name'] as String?,
  sku: json['sku'] as String?,
  canCancel: json['canCancel'] as bool?,
  type: json['type'] as String?,
  status: (json['status'] as num?)?.toInt(),
  userId: (json['userId'] as num?)?.toInt(),
  startedAt: json['startedAt'] as String?,
  canceledAt: json['canceledAt'] as String?,
  endedAt: json['endedAt'] as String?,
  isTrial: json['isTrial'] as bool?,
);

Map<String, dynamic> _$SubscriptionToJson(Subscription instance) =>
    <String, dynamic>{
      'name': instance.name,
      'sku': instance.sku,
      'canCancel': instance.canCancel,
      'type': instance.type,
      'status': instance.status,
      'userId': instance.userId,
      'startedAt': instance.startedAt,
      'canceledAt': instance.canceledAt,
      'endedAt': instance.endedAt,
      'isTrial': instance.isTrial,
    };

WhiteLabel _$WhiteLabelFromJson(Map<String, dynamic> json) =>
    WhiteLabel(id: (json['id'] as num).toInt(), key: json['key'] as String?);

Map<String, dynamic> _$WhiteLabelToJson(WhiteLabel instance) =>
    <String, dynamic>{'id': instance.id, 'key': instance.key};

Content _$ContentFromJson(Map<String, dynamic> json) => Content(
  name: json['name'] as String?,
  caption: json['caption'],
  url: json['url'] as String?,
  type: json['type'] as String?,
  items: json['items'] as List<dynamic>?,
);

Map<String, dynamic> _$ContentToJson(Content instance) => <String, dynamic>{
  'name': instance.name,
  'caption': instance.caption,
  'url': instance.url,
  'type': instance.type,
  'items': instance.items,
};

UserNutritionPlanSimplified _$UserNutritionPlanSimplifiedFromJson(
  Map<String, dynamic> json,
) => UserNutritionPlanSimplified(
  id: (json['id'] as num).toInt(),
  object: json['object'] as String?,
  url: json['url'] as String?,
  nutritionPlan:
      json['nutritionPlan'] == null
          ? null
          : NutritionPlan.fromJson(
            json['nutritionPlan'] as Map<String, dynamic>,
          ),
  startedAt: json['startedAt'] as String?,
  endedAt: json['endedAt'] as String?,
  state: json['state'] as String?,
  createdAt: json['createdAt'] as String?,
  updatedAt: json['updatedAt'] as String?,
);

Map<String, dynamic> _$UserNutritionPlanSimplifiedToJson(
  UserNutritionPlanSimplified instance,
) => <String, dynamic>{
  'id': instance.id,
  'object': instance.object,
  'url': instance.url,
  'nutritionPlan': instance.nutritionPlan,
  'startedAt': instance.startedAt,
  'endedAt': instance.endedAt,
  'state': instance.state,
  'createdAt': instance.createdAt,
  'updatedAt': instance.updatedAt,
};

NutritionPlan _$NutritionPlanFromJson(Map<String, dynamic> json) =>
    NutritionPlan(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String?,
      isFavorite: json['isFavorite'],
      canFavorite: json['canFavorite'] as bool?,
      url: json['url'] as String?,
      purchaseV2: json['purchaseV2'],
      isPremium: json['isPremium'] as bool?,
      needSubscription: json['needSubscription'] as bool?,
      subscriptionsInfo: json['subscriptionsInfo'],
      totalDays: json['totalDays'],
      totalWeeks: (json['totalWeeks'] as num?)?.toInt(),
      author:
          json['author'] == null
              ? null
              : ProgramAuthor.fromJson(json['author'] as Map<String, dynamic>),
      images:
          (json['images'] as List<dynamic>?)
              ?.map((e) => AzeooImage.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$NutritionPlanToJson(NutritionPlan instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'isFavorite': instance.isFavorite,
      'canFavorite': instance.canFavorite,
      'url': instance.url,
      'purchaseV2': instance.purchaseV2,
      'isPremium': instance.isPremium,
      'needSubscription': instance.needSubscription,
      'subscriptionsInfo': instance.subscriptionsInfo,
      'totalDays': instance.totalDays,
      'totalWeeks': instance.totalWeeks,
      'author': instance.author,
      'images': instance.images,
    };

FormSimplified _$FormSimplifiedFromJson(Map<String, dynamic> json) =>
    FormSimplified(
      id: (json['id'] as num).toInt(),
      share: json['share'] as String?,
      url: json['url'] as String?,
      name: json['name'] as String?,
      images: json['images'],
      author:
          json['author'] == null
              ? null
              : ProgramAuthor.fromJson(json['author'] as Map<String, dynamic>),
      coach:
          json['coach'] == null
              ? null
              : Coach.fromJson(json['coach'] as Map<String, dynamic>),
      state: json['state'] as String?,
      stepsCount: (json['stepsCount'] as num?)?.toInt(),
      date: json['date'],
      responseDate: json['responseDate'],
      createdAt: json['createdAt'] as String?,
      trainingId: json['trainingId'],
      nutritionPlan: json['nutritionPlan'],
      userProgram: json['userProgram'],
      userNutritionPlan: json['userNutritionPlan'],
    );

Map<String, dynamic> _$FormSimplifiedToJson(FormSimplified instance) =>
    <String, dynamic>{
      'id': instance.id,
      'share': instance.share,
      'url': instance.url,
      'name': instance.name,
      'images': instance.images,
      'author': instance.author,
      'coach': instance.coach,
      'state': instance.state,
      'stepsCount': instance.stepsCount,
      'date': instance.date,
      'responseDate': instance.responseDate,
      'createdAt': instance.createdAt,
      'trainingId': instance.trainingId,
      'nutritionPlan': instance.nutritionPlan,
      'userProgram': instance.userProgram,
      'userNutritionPlan': instance.userNutritionPlan,
    };

Coach _$CoachFromJson(Map<String, dynamic> json) => Coach(
  id: (json['id'] as num).toInt(),
  firstName: json['firstName'] as String?,
  lastName: json['lastName'] as String?,
  picture:
      (json['picture'] as List<dynamic>?)
          ?.map((e) => AzeooImage.fromJson(e as Map<String, dynamic>))
          .toList(),
  accountType: json['accountType'] as String?,
  isFollowing: json['isFollowing'] as bool?,
  coachAttachmentState: json['coachAttachmentState'],
  gender: json['gender'] as String?,
  type: json['type'] as String?,
);

Map<String, dynamic> _$CoachToJson(Coach instance) => <String, dynamic>{
  'id': instance.id,
  'firstName': instance.firstName,
  'lastName': instance.lastName,
  'picture': instance.picture,
  'accountType': instance.accountType,
  'isFollowing': instance.isFollowing,
  'coachAttachmentState': instance.coachAttachmentState,
  'gender': instance.gender,
  'type': instance.type,
};
