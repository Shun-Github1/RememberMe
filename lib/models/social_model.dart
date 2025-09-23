import 'package:uuid/uuid.dart';

class CommunityEvent {
  final String id;
  final String title;
  final String description;
  final DateTime startDate;
  final DateTime endDate;
  final String location;
  final String? address;
  final double? latitude;
  final double? longitude;
  final int maxAttendees;
  final int currentAttendees;
  final String organizer;
  final String? organizerContact;
  final EventCategory category;
  final List<String> tags;
  final String? imageUrl;
  final bool isVirtual;
  final String? virtualLink;
  final EventStatus status;
  final DateTime createdAt;
  final String? notes;
  final List<String> requirements; // equipment needed, skill level, etc.

  CommunityEvent({
    String? id,
    required this.title,
    required this.description,
    required this.startDate,
    required this.endDate,
    required this.location,
    this.address,
    this.latitude,
    this.longitude,
    this.maxAttendees = 20,
    this.currentAttendees = 0,
    required this.organizer,
    this.organizerContact,
    required this.category,
    this.tags = const [],
    this.imageUrl,
    this.isVirtual = false,
    this.virtualLink,
    this.status = EventStatus.scheduled,
    DateTime? createdAt,
    this.notes,
    this.requirements = const [],
  }) : 
    id = id ?? const Uuid().v4(),
    createdAt = createdAt ?? DateTime.now();

  CommunityEvent copyWith({
    String? title,
    String? description,
    DateTime? startDate,
    DateTime? endDate,
    String? location,
    String? address,
    double? latitude,
    double? longitude,
    int? maxAttendees,
    int? currentAttendees,
    String? organizer,
    String? organizerContact,
    EventCategory? category,
    List<String>? tags,
    String? imageUrl,
    bool? isVirtual,
    String? virtualLink,
    EventStatus? status,
    String? notes,
    List<String>? requirements,
  }) {
    return CommunityEvent(
      id: id,
      title: title ?? this.title,
      description: description ?? this.description,
      startDate: startDate ?? this.startDate,
      endDate: endDate ?? this.endDate,
      location: location ?? this.location,
      address: address ?? this.address,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      maxAttendees: maxAttendees ?? this.maxAttendees,
      currentAttendees: currentAttendees ?? this.currentAttendees,
      organizer: organizer ?? this.organizer,
      organizerContact: organizerContact ?? this.organizerContact,
      category: category ?? this.category,
      tags: tags ?? this.tags,
      imageUrl: imageUrl ?? this.imageUrl,
      isVirtual: isVirtual ?? this.isVirtual,
      virtualLink: virtualLink ?? this.virtualLink,
      status: status ?? this.status,
      createdAt: createdAt,
      notes: notes ?? this.notes,
      requirements: requirements ?? this.requirements,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'startDate': startDate.toIso8601String(),
      'endDate': endDate.toIso8601String(),
      'location': location,
      'address': address,
      'latitude': latitude,
      'longitude': longitude,
      'maxAttendees': maxAttendees,
      'currentAttendees': currentAttendees,
      'organizer': organizer,
      'organizerContact': organizerContact,
      'category': category.toString().split('.').last,
      'tags': tags,
      'imageUrl': imageUrl,
      'isVirtual': isVirtual,
      'virtualLink': virtualLink,
      'status': status.toString().split('.').last,
      'createdAt': createdAt.toIso8601String(),
      'notes': notes,
      'requirements': requirements,
    };
  }

  factory CommunityEvent.fromJson(Map<String, dynamic> json) {
    return CommunityEvent(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      startDate: DateTime.parse(json['startDate']),
      endDate: DateTime.parse(json['endDate']),
      location: json['location'],
      address: json['address'],
      latitude: json['latitude']?.toDouble(),
      longitude: json['longitude']?.toDouble(),
      maxAttendees: json['maxAttendees'] ?? 20,
      currentAttendees: json['currentAttendees'] ?? 0,
      organizer: json['organizer'],
      organizerContact: json['organizerContact'],
      category: EventCategory.values.firstWhere(
        (e) => e.toString().split('.').last == json['category'],
      ),
      tags: List<String>.from(json['tags'] ?? []),
      imageUrl: json['imageUrl'],
      isVirtual: json['isVirtual'] ?? false,
      virtualLink: json['virtualLink'],
      status: EventStatus.values.firstWhere(
        (e) => e.toString().split('.').last == json['status'],
        orElse: () => EventStatus.scheduled,
      ),
      createdAt: DateTime.parse(json['createdAt']),
      notes: json['notes'],
      requirements: List<String>.from(json['requirements'] ?? []),
    );
  }

  bool get isFull => currentAttendees >= maxAttendees;
  bool get canRegister => !isFull && status == EventStatus.scheduled;
  Duration get duration => endDate.difference(startDate);
}

enum EventCategory {
  artsAndCrafts,
  exercise,
  social,
  educational,
  support,
  entertainment,
  health,
  technology,
  other,
}

enum EventStatus {
  scheduled,
  ongoing,
  completed,
  cancelled,
  postponed,
}

class EventRegistration {
  final String id;
  final String eventId;
  final String userId;
  final DateTime registeredAt;
  final RegistrationStatus status;
  final String? notes;
  final bool attended;
  final DateTime? attendedAt;
  final double? rating;
  final String? feedback;

  EventRegistration({
    String? id,
    required this.eventId,
    required this.userId,
    DateTime? registeredAt,
    this.status = RegistrationStatus.confirmed,
    this.notes,
    this.attended = false,
    this.attendedAt,
    this.rating,
    this.feedback,
  }) : 
    id = id ?? const Uuid().v4(),
    registeredAt = registeredAt ?? DateTime.now();

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'eventId': eventId,
      'userId': userId,
      'registeredAt': registeredAt.toIso8601String(),
      'status': status.toString().split('.').last,
      'notes': notes,
      'attended': attended,
      'attendedAt': attendedAt?.toIso8601String(),
      'rating': rating,
      'feedback': feedback,
    };
  }

  factory EventRegistration.fromJson(Map<String, dynamic> json) {
    return EventRegistration(
      id: json['id'],
      eventId: json['eventId'],
      userId: json['userId'],
      registeredAt: DateTime.parse(json['registeredAt']),
      status: RegistrationStatus.values.firstWhere(
        (e) => e.toString().split('.').last == json['status'],
        orElse: () => RegistrationStatus.confirmed,
      ),
      notes: json['notes'],
      attended: json['attended'] ?? false,
      attendedAt: json['attendedAt'] != null ? DateTime.parse(json['attendedAt']) : null,
      rating: json['rating']?.toDouble(),
      feedback: json['feedback'],
    );
  }
}

enum RegistrationStatus {
  pending,
  confirmed,
  cancelled,
  waitlist,
}

class ForumPost {
  final String id;
  final String userId;
  final String userName;
  final String title;
  final String content;
  final DateTime createdAt;
  final DateTime? updatedAt;
  final ForumCategory category;
  final List<String> tags;
  final int likes;
  final int replies;
  final bool isPinned;
  final bool isLocked;
  final String? imageUrl;
  final List<String> likedBy;

  ForumPost({
    String? id,
    required this.userId,
    required this.userName,
    required this.title,
    required this.content,
    DateTime? createdAt,
    this.updatedAt,
    required this.category,
    this.tags = const [],
    this.likes = 0,
    this.replies = 0,
    this.isPinned = false,
    this.isLocked = false,
    this.imageUrl,
    this.likedBy = const [],
  }) : 
    id = id ?? const Uuid().v4(),
    createdAt = createdAt ?? DateTime.now();

  ForumPost copyWith({
    String? title,
    String? content,
    DateTime? updatedAt,
    ForumCategory? category,
    List<String>? tags,
    int? likes,
    int? replies,
    bool? isPinned,
    bool? isLocked,
    String? imageUrl,
    List<String>? likedBy,
  }) {
    return ForumPost(
      id: id,
      userId: userId,
      userName: userName,
      title: title ?? this.title,
      content: content ?? this.content,
      createdAt: createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      category: category ?? this.category,
      tags: tags ?? this.tags,
      likes: likes ?? this.likes,
      replies: replies ?? this.replies,
      isPinned: isPinned ?? this.isPinned,
      isLocked: isLocked ?? this.isLocked,
      imageUrl: imageUrl ?? this.imageUrl,
      likedBy: likedBy ?? this.likedBy,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'userId': userId,
      'userName': userName,
      'title': title,
      'content': content,
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt?.toIso8601String(),
      'category': category.toString().split('.').last,
      'tags': tags,
      'likes': likes,
      'replies': replies,
      'isPinned': isPinned,
      'isLocked': isLocked,
      'imageUrl': imageUrl,
      'likedBy': likedBy,
    };
  }

  factory ForumPost.fromJson(Map<String, dynamic> json) {
    return ForumPost(
      id: json['id'],
      userId: json['userId'],
      userName: json['userName'],
      title: json['title'],
      content: json['content'],
      createdAt: DateTime.parse(json['createdAt']),
      updatedAt: json['updatedAt'] != null ? DateTime.parse(json['updatedAt']) : null,
      category: ForumCategory.values.firstWhere(
        (e) => e.toString().split('.').last == json['category'],
      ),
      tags: List<String>.from(json['tags'] ?? []),
      likes: json['likes'] ?? 0,
      replies: json['replies'] ?? 0,
      isPinned: json['isPinned'] ?? false,
      isLocked: json['isLocked'] ?? false,
      imageUrl: json['imageUrl'],
      likedBy: List<String>.from(json['likedBy'] ?? []),
    );
  }

  bool get isLikedByCurrentUser => false; // Will be set based on current user ID
  String get timeAgo {
    final now = DateTime.now();
    final difference = now.difference(createdAt);
    
    if (difference.inDays > 0) {
      return '${difference.inDays}d ago';
    } else if (difference.inHours > 0) {
      return '${difference.inHours}h ago';
    } else if (difference.inMinutes > 0) {
      return '${difference.inMinutes}m ago';
    } else {
      return 'Just now';
    }
  }
}

enum ForumCategory {
  general,
  health,
  activities,
  nutrition,
  support,
  tips,
  events,
  technology,
}

class ForumReply {
  final String id;
  final String postId;
  final String userId;
  final String userName;
  final String content;
  final DateTime createdAt;
  final DateTime? updatedAt;
  final int likes;
  final String? parentReplyId;
  final List<String> likedBy;

  ForumReply({
    String? id,
    required this.postId,
    required this.userId,
    required this.userName,
    required this.content,
    DateTime? createdAt,
    this.updatedAt,
    this.likes = 0,
    this.parentReplyId,
    this.likedBy = const [],
  }) : 
    id = id ?? const Uuid().v4(),
    createdAt = createdAt ?? DateTime.now();

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'postId': postId,
      'userId': userId,
      'userName': userName,
      'content': content,
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt?.toIso8601String(),
      'likes': likes,
      'parentReplyId': parentReplyId,
      'likedBy': likedBy,
    };
  }

  factory ForumReply.fromJson(Map<String, dynamic> json) {
    return ForumReply(
      id: json['id'],
      postId: json['postId'],
      userId: json['userId'],
      userName: json['userName'],
      content: json['content'],
      createdAt: DateTime.parse(json['createdAt']),
      updatedAt: json['updatedAt'] != null ? DateTime.parse(json['updatedAt']) : null,
      likes: json['likes'] ?? 0,
      parentReplyId: json['parentReplyId'],
      likedBy: List<String>.from(json['likedBy'] ?? []),
    );
  }

  String get timeAgo {
    final now = DateTime.now();
    final difference = now.difference(createdAt);
    
    if (difference.inDays > 0) {
      return '${difference.inDays}d ago';
    } else if (difference.inHours > 0) {
      return '${difference.inHours}h ago';
    } else if (difference.inMinutes > 0) {
      return '${difference.inMinutes}m ago';
    } else {
      return 'Just now';
    }
  }
}

class SocialConnection {
  final String id;
  final String userId;
  final String connectedUserId;
  final String connectedUserName;
  final String? connectedUserProfileImage;
  final ConnectionStatus status;
  final DateTime createdAt;
  final DateTime? acceptedAt;

  SocialConnection({
    String? id,
    required this.userId,
    required this.connectedUserId,
    required this.connectedUserName,
    this.connectedUserProfileImage,
    this.status = ConnectionStatus.pending,
    DateTime? createdAt,
    this.acceptedAt,
  }) : 
    id = id ?? const Uuid().v4(),
    createdAt = createdAt ?? DateTime.now();

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'userId': userId,
      'connectedUserId': connectedUserId,
      'connectedUserName': connectedUserName,
      'connectedUserProfileImage': connectedUserProfileImage,
      'status': status.toString().split('.').last,
      'createdAt': createdAt.toIso8601String(),
      'acceptedAt': acceptedAt?.toIso8601String(),
    };
  }

  factory SocialConnection.fromJson(Map<String, dynamic> json) {
    return SocialConnection(
      id: json['id'],
      userId: json['userId'],
      connectedUserId: json['connectedUserId'],
      connectedUserName: json['connectedUserName'],
      connectedUserProfileImage: json['connectedUserProfileImage'],
      status: ConnectionStatus.values.firstWhere(
        (e) => e.toString().split('.').last == json['status'],
        orElse: () => ConnectionStatus.pending,
      ),
      createdAt: DateTime.parse(json['createdAt']),
      acceptedAt: json['acceptedAt'] != null ? DateTime.parse(json['acceptedAt']) : null,
    );
  }
}

enum ConnectionStatus {
  pending,
  accepted,
  blocked,
}

class DementiaEncyclopediaEntry {
  final String id;
  final String title;
  final String content;
  final String category;
  final List<String> tags;
  bool isBookmarked;

  DementiaEncyclopediaEntry({
    required this.id,
    required this.title,
    required this.content,
    required this.category,
    required this.tags,
    this.isBookmarked = false,
  });

  DementiaEncyclopediaEntry copyWith({
    String? id,
    String? title,
    String? content,
    String? category,
    List<String>? tags,
    bool? isBookmarked,
  }) {
    return DementiaEncyclopediaEntry(
      id: id ?? this.id,
      title: title ?? this.title,
      content: content ?? this.content,
      category: category ?? this.category,
      tags: tags ?? this.tags,
      isBookmarked: isBookmarked ?? this.isBookmarked,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'content': content,
      'category': category,
      'tags': tags,
      'isBookmarked': isBookmarked,
    };
  }

  factory DementiaEncyclopediaEntry.fromJson(Map<String, dynamic> json) {
    return DementiaEncyclopediaEntry(
      id: json['id'],
      title: json['title'],
      content: json['content'],
      category: json['category'],
      tags: List<String>.from(json['tags'] ?? []),
      isBookmarked: json['isBookmarked'] ?? false,
    );
  }
}
