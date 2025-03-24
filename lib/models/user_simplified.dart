class UserSimplified {
  final int id;
  final String object;
  final String firstName;
  final String lastName;
  final List<dynamic> picture;
  final String accountType;
  final String? accountTypeClub;
  final String? countryFlag;
  final int points;
  final int badgesCount;
  final bool isFollowing;
  final String? gender;
  final String? goal;
  final String? level;
  final String? coachAttachmentState;
  final bool isPublicCoach;
  final String email;
  final bool isTest;
  final String? whiteLabel;

  UserSimplified({
    required this.id,
    required this.object,
    required this.firstName,
    required this.lastName,
    required this.picture,
    required this.accountType,
    this.accountTypeClub,
    this.countryFlag,
    required this.points,
    required this.badgesCount,
    required this.isFollowing,
    this.gender,
    this.goal,
    this.level,
    this.coachAttachmentState,
    required this.isPublicCoach,
    required this.email,
    required this.isTest,
    this.whiteLabel,
  });

  factory UserSimplified.fromJson(Map<String, dynamic> json) {
    return UserSimplified(
      id: json['id'],
      object: json['object'],
      firstName: json['first_name'],
      lastName: json['last_name'],
      picture: json['picture'],
      accountType: json['account_type'],
      accountTypeClub: json['account_type_club'],
      countryFlag: json['country_flag'],
      points: json['points'],
      badgesCount: json['badges_count'],
      isFollowing: json['is_following'],
      gender: json['gender'],
      goal: json['goal'],
      level: json['level'],
      coachAttachmentState: json['coach_attachment_state'],
      isPublicCoach: json['is_public_coach'],
      email: json['email'],
      isTest: json['is_test'],
      whiteLabel: json['white_label'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'object': object,
      'first_name': firstName,
      'last_name': lastName,
      'picture': picture,
      'account_type': accountType,
      'account_type_club': accountTypeClub,
      'country_flag': countryFlag,
      'points': points,
      'badges_count': badgesCount,
      'is_following': isFollowing,
      'gender': gender,
      'goal': goal,
      'level': level,
      'coach_attachment_state': coachAttachmentState,
      'is_public_coach': isPublicCoach,
      'email': email,
      'is_test': isTest,
      'white_label': whiteLabel,
    };
  }
}
