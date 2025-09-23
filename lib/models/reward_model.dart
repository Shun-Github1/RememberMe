import 'package:uuid/uuid.dart';

class Reward {
  final String id;
  final String title;
  final String description;
  final RewardType type;
  final RewardCategory category;
  final int pointsRequired;
  final String? imageUrl;
  final String? partnerBusiness;
  final String? partnerContact;
  final String? location;
  final double? latitude;
  final double? longitude;
  final DateTime validFrom;
  final DateTime validUntil;
  final bool isActive;
  final int maxRedemptions;
  final int currentRedemptions;
  final String? termsAndConditions;
  final Map<String, dynamic> metadata;

  Reward({
    String? id,
    required this.title,
    required this.description,
    required this.type,
    required this.category,
    required this.pointsRequired,
    this.imageUrl,
    this.partnerBusiness,
    this.partnerContact,
    this.location,
    this.latitude,
    this.longitude,
    required this.validFrom,
    required this.validUntil,
    this.isActive = true,
    this.maxRedemptions = 100,
    this.currentRedemptions = 0,
    this.termsAndConditions,
    Map<String, dynamic>? metadata,
  }) : 
    id = id ?? const Uuid().v4(),
    metadata = metadata ?? {};

  Reward copyWith({
    String? title,
    String? description,
    RewardType? type,
    RewardCategory? category,
    int? pointsRequired,
    String? imageUrl,
    String? partnerBusiness,
    String? partnerContact,
    String? location,
    double? latitude,
    double? longitude,
    DateTime? validFrom,
    DateTime? validUntil,
    bool? isActive,
    int? maxRedemptions,
    int? currentRedemptions,
    String? termsAndConditions,
    Map<String, dynamic>? metadata,
  }) {
    return Reward(
      id: id,
      title: title ?? this.title,
      description: description ?? this.description,
      type: type ?? this.type,
      category: category ?? this.category,
      pointsRequired: pointsRequired ?? this.pointsRequired,
      imageUrl: imageUrl ?? this.imageUrl,
      partnerBusiness: partnerBusiness ?? this.partnerBusiness,
      partnerContact: partnerContact ?? this.partnerContact,
      location: location ?? this.location,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      validFrom: validFrom ?? this.validFrom,
      validUntil: validUntil ?? this.validUntil,
      isActive: isActive ?? this.isActive,
      maxRedemptions: maxRedemptions ?? this.maxRedemptions,
      currentRedemptions: currentRedemptions ?? this.currentRedemptions,
      termsAndConditions: termsAndConditions ?? this.termsAndConditions,
      metadata: metadata ?? this.metadata,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'type': type.toString().split('.').last,
      'category': category.toString().split('.').last,
      'pointsRequired': pointsRequired,
      'imageUrl': imageUrl,
      'partnerBusiness': partnerBusiness,
      'partnerContact': partnerContact,
      'location': location,
      'latitude': latitude,
      'longitude': longitude,
      'validFrom': validFrom.toIso8601String(),
      'validUntil': validUntil.toIso8601String(),
      'isActive': isActive,
      'maxRedemptions': maxRedemptions,
      'currentRedemptions': currentRedemptions,
      'termsAndConditions': termsAndConditions,
      'metadata': metadata,
    };
  }

  factory Reward.fromJson(Map<String, dynamic> json) {
    return Reward(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      type: RewardType.values.firstWhere(
        (e) => e.toString().split('.').last == json['type'],
      ),
      category: RewardCategory.values.firstWhere(
        (e) => e.toString().split('.').last == json['category'],
      ),
      pointsRequired: json['pointsRequired'],
      imageUrl: json['imageUrl'],
      partnerBusiness: json['partnerBusiness'],
      partnerContact: json['partnerContact'],
      location: json['location'],
      latitude: json['latitude']?.toDouble(),
      longitude: json['longitude']?.toDouble(),
      validFrom: DateTime.parse(json['validFrom']),
      validUntil: DateTime.parse(json['validUntil']),
      isActive: json['isActive'] ?? true,
      maxRedemptions: json['maxRedemptions'] ?? 100,
      currentRedemptions: json['currentRedemptions'] ?? 0,
      termsAndConditions: json['termsAndConditions'],
      metadata: Map<String, dynamic>.from(json['metadata'] ?? {}),
    );
  }

  bool get isAvailable => isActive && 
      DateTime.now().isAfter(validFrom) && 
      DateTime.now().isBefore(validUntil) &&
      currentRedemptions < maxRedemptions;
  
  bool get isExpired => DateTime.now().isAfter(validUntil);
  bool get isFullyRedeemed => currentRedemptions >= maxRedemptions;
  
  double get availabilityPercentage => maxRedemptions > 0 
      ? (1.0 - (currentRedemptions / maxRedemptions)).clamp(0.0, 1.0)
      : 1.0;
}

enum RewardType {
  discount,
  freeItem,
  experience,
  gift,
  voucher,
  service,
}

enum RewardCategory {
  food,
  retail,
  entertainment,
  health,
  fitness,
  beauty,
  travel,
  education,
  technology,
  other,
}

class UserReward {
  final String id;
  final String userId;
  final String rewardId;
  final DateTime earnedAt;
  final DateTime? redeemedAt;
  final DateTime? expiresAt;
  final RewardStatus status;
  final String? redemptionCode;
  final String? redemptionLocation;
  final String? notes;
  final int pointsSpent;

  UserReward({
    String? id,
    required this.userId,
    required this.rewardId,
    required this.earnedAt,
    this.redeemedAt,
    DateTime? expiresAt,
    this.status = RewardStatus.earned,
    this.redemptionCode,
    this.redemptionLocation,
    this.notes,
    this.pointsSpent = 0,
  }) : 
    id = id ?? const Uuid().v4(),
    expiresAt = expiresAt ?? earnedAt.add(const Duration(days: 90));

  UserReward copyWith({
    DateTime? redeemedAt,
    RewardStatus? status,
    String? redemptionCode,
    String? redemptionLocation,
    String? notes,
  }) {
    return UserReward(
      id: id,
      userId: userId,
      rewardId: rewardId,
      earnedAt: earnedAt,
      redeemedAt: redeemedAt ?? this.redeemedAt,
      expiresAt: expiresAt,
      status: status ?? this.status,
      redemptionCode: redemptionCode ?? this.redemptionCode,
      redemptionLocation: redemptionLocation ?? this.redemptionLocation,
      notes: notes ?? this.notes,
      pointsSpent: pointsSpent,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'userId': userId,
      'rewardId': rewardId,
      'earnedAt': earnedAt.toIso8601String(),
      'redeemedAt': redeemedAt?.toIso8601String(),
      'expiresAt': expiresAt?.toIso8601String(),
      'status': status.toString().split('.').last,
      'redemptionCode': redemptionCode,
      'redemptionLocation': redemptionLocation,
      'notes': notes,
      'pointsSpent': pointsSpent,
    };
  }

  factory UserReward.fromJson(Map<String, dynamic> json) {
    return UserReward(
      id: json['id'],
      userId: json['userId'],
      rewardId: json['rewardId'],
      earnedAt: DateTime.parse(json['earnedAt']),
      redeemedAt: json['redeemedAt'] != null ? DateTime.parse(json['redeemedAt']) : null,
      expiresAt: json['expiresAt'] != null ? DateTime.parse(json['expiresAt']) : null,
      status: RewardStatus.values.firstWhere(
        (e) => e.toString().split('.').last == json['status'],
        orElse: () => RewardStatus.earned,
      ),
      redemptionCode: json['redemptionCode'],
      redemptionLocation: json['redemptionLocation'],
      notes: json['notes'],
      pointsSpent: json['pointsSpent'] ?? 0,
    );
  }

  bool get isExpired => expiresAt != null && DateTime.now().isAfter(expiresAt!);
  bool get canRedeem => status == RewardStatus.earned && !isExpired;
  int get daysUntilExpiry => expiresAt != null 
      ? expiresAt!.difference(DateTime.now()).inDays 
      : 0;
}

enum RewardStatus {
  earned,
  redeemed,
  expired,
  cancelled,
}

class UserPoints {
  final String id;
  final String userId;
  final int totalPoints;
  final int availablePoints;
  final int spentPoints;
  final DateTime lastUpdated;
  final Map<String, int> pointsByActivity; // activity type -> points earned

  UserPoints({
    String? id,
    required this.userId,
    this.totalPoints = 0,
    this.availablePoints = 0,
    this.spentPoints = 0,
    DateTime? lastUpdated,
    Map<String, int>? pointsByActivity,
  }) : 
    id = id ?? const Uuid().v4(),
    lastUpdated = lastUpdated ?? DateTime.now(),
    pointsByActivity = pointsByActivity ?? {};

  UserPoints copyWith({
    int? totalPoints,
    int? availablePoints,
    int? spentPoints,
    Map<String, int>? pointsByActivity,
  }) {
    return UserPoints(
      id: id,
      userId: userId,
      totalPoints: totalPoints ?? this.totalPoints,
      availablePoints: availablePoints ?? this.availablePoints,
      spentPoints: spentPoints ?? this.spentPoints,
      lastUpdated: lastUpdated,
      pointsByActivity: pointsByActivity ?? this.pointsByActivity,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'userId': userId,
      'totalPoints': totalPoints,
      'availablePoints': availablePoints,
      'spentPoints': spentPoints,
      'lastUpdated': lastUpdated.toIso8601String(),
      'pointsByActivity': pointsByActivity,
    };
  }

  factory UserPoints.fromJson(Map<String, dynamic> json) {
    return UserPoints(
      id: json['id'],
      userId: json['userId'],
      totalPoints: json['totalPoints'] ?? 0,
      availablePoints: json['availablePoints'] ?? 0,
      spentPoints: json['spentPoints'] ?? 0,
      lastUpdated: DateTime.parse(json['lastUpdated']),
      pointsByActivity: Map<String, int>.from(
        json['pointsByActivity']?.map((k, v) => MapEntry(k, v as int)) ?? {},
      ),
    );
  }

  UserPoints addPoints(int points, String activityType) {
    final newPointsByActivity = Map<String, int>.from(pointsByActivity);
    newPointsByActivity[activityType] = (newPointsByActivity[activityType] ?? 0) + points;
    
    return copyWith(
      totalPoints: totalPoints + points,
      availablePoints: availablePoints + points,
      pointsByActivity: newPointsByActivity,
    );
  }

  UserPoints spendPoints(int points) {
    if (availablePoints >= points) {
      return copyWith(
        availablePoints: availablePoints - points,
        spentPoints: spentPoints + points,
      );
    }
    return this;
  }
}

class PointsTransaction {
  final String id;
  final String userId;
  final int points;
  final TransactionType type;
  final String description;
  final DateTime timestamp;
  final String? relatedId; // ID of related activity, reward, etc.
  final String? relatedType; // Type of related entity

  PointsTransaction({
    String? id,
    required this.userId,
    required this.points,
    required this.type,
    required this.description,
    DateTime? timestamp,
    this.relatedId,
    this.relatedType,
  }) : 
    id = id ?? const Uuid().v4(),
    timestamp = timestamp ?? DateTime.now();

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'userId': userId,
      'points': points,
      'type': type.toString().split('.').last,
      'description': description,
      'timestamp': timestamp.toIso8601String(),
      'relatedId': relatedId,
      'relatedType': relatedType,
    };
  }

  factory PointsTransaction.fromJson(Map<String, dynamic> json) {
    return PointsTransaction(
      id: json['id'],
      userId: json['userId'],
      points: json['points'],
      type: TransactionType.values.firstWhere(
        (e) => e.toString().split('.').last == json['type'],
      ),
      description: json['description'],
      timestamp: DateTime.parse(json['timestamp']),
      relatedId: json['relatedId'],
      relatedType: json['relatedType'],
    );
  }
}

enum TransactionType {
  earned,
  spent,
  bonus,
  penalty,
  adjustment,
}

class RewardPartner {
  final String id;
  final String businessName;
  final String description;
  final String category;
  final String? logoUrl;
  final String contactPerson;
  final String email;
  final String phone;
  final String address;
  final String? website;
  final double? latitude;
  final double? longitude;
  final List<String> services;
  final bool isActive;
  final DateTime partnershipStart;
  final DateTime? partnershipEnd;
  final int totalRewardsOffered;
  final int totalRedemptions;
  final String? notes;

  RewardPartner({
    String? id,
    required this.businessName,
    required this.description,
    required this.category,
    this.logoUrl,
    required this.contactPerson,
    required this.email,
    required this.phone,
    required this.address,
    this.website,
    this.latitude,
    this.longitude,
    this.services = const [],
    this.isActive = true,
    required this.partnershipStart,
    this.partnershipEnd,
    this.totalRewardsOffered = 0,
    this.totalRedemptions = 0,
    this.notes,
  }) : id = id ?? const Uuid().v4();

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'businessName': businessName,
      'description': description,
      'category': category,
      'logoUrl': logoUrl,
      'contactPerson': contactPerson,
      'email': email,
      'phone': phone,
      'address': address,
      'website': website,
      'latitude': latitude,
      'longitude': longitude,
      'services': services,
      'isActive': isActive,
      'partnershipStart': partnershipStart.toIso8601String(),
      'partnershipEnd': partnershipEnd?.toIso8601String(),
      'totalRewardsOffered': totalRewardsOffered,
      'totalRedemptions': totalRedemptions,
      'notes': notes,
    };
  }

  factory RewardPartner.fromJson(Map<String, dynamic> json) {
    return RewardPartner(
      id: json['id'],
      businessName: json['businessName'],
      description: json['description'],
      category: json['category'],
      logoUrl: json['logoUrl'],
      contactPerson: json['contactPerson'],
      email: json['email'],
      phone: json['phone'],
      address: json['address'],
      website: json['website'],
      latitude: json['latitude']?.toDouble(),
      longitude: json['longitude']?.toDouble(),
      services: List<String>.from(json['services'] ?? []),
      isActive: json['isActive'] ?? true,
      partnershipStart: DateTime.parse(json['partnershipStart']),
      partnershipEnd: json['partnershipEnd'] != null 
          ? DateTime.parse(json['partnershipEnd']) 
          : null,
      totalRewardsOffered: json['totalRewardsOffered'] ?? 0,
      totalRedemptions: json['totalRedemptions'] ?? 0,
      notes: json['notes'],
    );
  }

  bool get isPartnershipActive => isActive && 
      (partnershipEnd == null || DateTime.now().isBefore(partnershipEnd!));
}
