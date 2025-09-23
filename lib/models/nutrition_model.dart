import 'package:uuid/uuid.dart';

class NutritionEntry {
  final String id;
  final String userId;
  final DateTime timestamp;
  final MealType mealType;
  final String foodName;
  final double quantity;
  final String unit;
  final double calories;
  final double protein;
  final double carbohydrates;
  final double fat;
  final double fiber;
  final double sugar;
  final double sodium;
  final String? notes;
  final Map<String, double> micronutrients; // vitamins, minerals

  NutritionEntry({
    String? id,
    required this.userId,
    required this.timestamp,
    required this.mealType,
    required this.foodName,
    required this.quantity,
    required this.unit,
    this.calories = 0.0,
    this.protein = 0.0,
    this.carbohydrates = 0.0,
    this.fat = 0.0,
    this.fiber = 0.0,
    this.sugar = 0.0,
    this.sodium = 0.0,
    this.notes,
    Map<String, double>? micronutrients,
  }) : 
    id = id ?? const Uuid().v4(),
    micronutrients = micronutrients ?? {};

  NutritionEntry copyWith({
    String? userId,
    DateTime? timestamp,
    MealType? mealType,
    String? foodName,
    double? quantity,
    String? unit,
    double? calories,
    double? protein,
    double? carbohydrates,
    double? fat,
    double? fiber,
    double? sugar,
    double? sodium,
    String? notes,
    Map<String, double>? micronutrients,
  }) {
    return NutritionEntry(
      id: id,
      userId: userId ?? this.userId,
      timestamp: timestamp ?? this.timestamp,
      mealType: mealType ?? this.mealType,
      foodName: foodName ?? this.foodName,
      quantity: quantity ?? this.quantity,
      unit: unit ?? this.unit,
      calories: calories ?? this.calories,
      protein: protein ?? this.protein,
      carbohydrates: carbohydrates ?? this.carbohydrates,
      fat: fat ?? this.fat,
      fiber: fiber ?? this.fiber,
      sugar: sugar ?? this.sugar,
      sodium: sodium ?? this.sodium,
      notes: notes ?? this.notes,
      micronutrients: micronutrients ?? this.micronutrients,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'userId': userId,
      'timestamp': timestamp.toIso8601String(),
      'mealType': mealType.toString().split('.').last,
      'foodName': foodName,
      'quantity': quantity,
      'unit': unit,
      'calories': calories,
      'protein': protein,
      'carbohydrates': carbohydrates,
      'fat': fat,
      'fiber': fiber,
      'sugar': sugar,
      'sodium': sodium,
      'notes': notes,
      'micronutrients': micronutrients,
    };
  }

  factory NutritionEntry.fromJson(Map<String, dynamic> json) {
    return NutritionEntry(
      id: json['id'],
      userId: json['userId'],
      timestamp: DateTime.parse(json['timestamp']),
      mealType: MealType.values.firstWhere(
        (e) => e.toString().split('.').last == json['mealType'],
      ),
      foodName: json['foodName'],
      quantity: (json['quantity'] ?? 0.0).toDouble(),
      unit: json['unit'],
      calories: (json['calories'] ?? 0.0).toDouble(),
      protein: (json['protein'] ?? 0.0).toDouble(),
      carbohydrates: (json['carbohydrates'] ?? 0.0).toDouble(),
      fat: (json['fat'] ?? 0.0).toDouble(),
      fiber: (json['fiber'] ?? 0.0).toDouble(),
      sugar: (json['sugar'] ?? 0.0).toDouble(),
      sodium: (json['sodium'] ?? 0.0).toDouble(),
      notes: json['notes'],
      micronutrients: Map<String, double>.from(
        json['micronutrients']?.map((k, v) => MapEntry(k, (v as num).toDouble())) ?? {},
      ),
    );
  }
}

enum MealType {
  breakfast,
  lunch,
  dinner,
  snack,
  other,
}

class DailyNutritionSummary {
  final String id;
  final String userId;
  final DateTime date;
  final double totalCalories;
  final double totalProtein;
  final double totalCarbohydrates;
  final double totalFat;
  final double totalFiber;
  final double totalSugar;
  final double totalSodium;
  final int waterIntake; // glasses
  final int waterGoal; // glasses
  final List<NutritionEntry> entries;
  final Map<String, double> micronutrients;
  final NutritionScore score;

  DailyNutritionSummary({
    String? id,
    required this.userId,
    required this.date,
    this.totalCalories = 0.0,
    this.totalProtein = 0.0,
    this.totalCarbohydrates = 0.0,
    this.totalFat = 0.0,
    this.totalFiber = 0.0,
    this.totalSugar = 0.0,
    this.totalSodium = 0.0,
    this.waterIntake = 0,
    this.waterGoal = 8,
    this.entries = const [],
    Map<String, double>? micronutrients,
  }) : 
    id = id ?? const Uuid().v4(),
    micronutrients = micronutrients ?? {},
    score = _calculateScore(
      totalCalories, totalProtein, totalCarbohydrates, totalFat,
      totalFiber, totalSugar, totalSodium, waterIntake, waterGoal,
    );

  static NutritionScore _calculateScore(
    double calories, double protein, double carbs, double fat,
    double fiber, double sugar, double sodium, int water, int waterGoal,
  ) {
    int score = 0;
    
    // Calorie range (assume 1500-2500 for older adults)
    if (calories >= 1500 && calories <= 2500) score += 2;
    else if (calories >= 1200 && calories <= 3000) score += 1;
    
    // Protein (15-25% of calories)
    final proteinCalories = protein * 4;
    final proteinPercent = calories > 0 ? (proteinCalories / calories) * 100 : 0;
    if (proteinPercent >= 15 && proteinPercent <= 25) score += 2;
    else if (proteinPercent >= 10 && proteinPercent <= 30) score += 1;
    
    // Fiber (25-35g)
    if (fiber >= 25 && fiber <= 35) score += 2;
    else if (fiber >= 20 && fiber <= 40) score += 1;
    
    // Sugar (<50g)
    if (sugar < 25) score += 2;
    else if (sugar < 50) score += 1;
    
    // Sodium (<2300mg)
    if (sodium < 1500) score += 2;
    else if (sodium < 2300) score += 1;
    
    // Water intake
    final waterProgress = waterGoal > 0 ? water / waterGoal : 0;
    if (waterProgress >= 1.0) score += 2;
    else if (waterProgress >= 0.75) score += 1;
    
    if (score >= 8) return NutritionScore.excellent;
    if (score >= 6) return NutritionScore.good;
    if (score >= 4) return NutritionScore.fair;
    return NutritionScore.poor;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'userId': userId,
      'date': date.toIso8601String().split('T')[0],
      'totalCalories': totalCalories,
      'totalProtein': totalProtein,
      'totalCarbohydrates': totalCarbohydrates,
      'totalFat': totalFat,
      'totalFiber': totalFiber,
      'totalSugar': totalSugar,
      'totalSodium': totalSodium,
      'waterIntake': waterIntake,
      'waterGoal': waterGoal,
      'entries': entries.map((e) => e.toJson()).toList(),
      'micronutrients': micronutrients,
      'score': score.toString().split('.').last,
    };
  }

  factory DailyNutritionSummary.fromJson(Map<String, dynamic> json) {
    return DailyNutritionSummary(
      id: json['id'],
      userId: json['userId'],
      date: DateTime.parse(json['date']),
      totalCalories: (json['totalCalories'] ?? 0.0).toDouble(),
      totalProtein: (json['totalProtein'] ?? 0.0).toDouble(),
      totalCarbohydrates: (json['totalCarbohydrates'] ?? 0.0).toDouble(),
      totalFat: (json['totalFat'] ?? 0.0).toDouble(),
      totalFiber: (json['totalFiber'] ?? 0.0).toDouble(),
      totalSugar: (json['totalSugar'] ?? 0.0).toDouble(),
      totalSodium: (json['totalSodium'] ?? 0.0).toDouble(),
      waterIntake: json['waterIntake'] ?? 0,
      waterGoal: json['waterGoal'] ?? 8,
      entries: (json['entries'] as List<dynamic>?)
          ?.map((e) => NutritionEntry.fromJson(e))
          .toList() ?? [],
      micronutrients: Map<String, double>.from(
        json['micronutrients']?.map((k, v) => MapEntry(k, (v as num).toDouble())) ?? {},
      ),
    );
  }

  double get waterIntakeProgress => waterGoal > 0 ? (waterIntake / waterGoal).clamp(0.0, 1.0) : 0.0;
  int get remainingWaterGlasses => (waterGoal - waterIntake).clamp(0, waterGoal);
}

enum NutritionScore {
  excellent,
  good,
  fair,
  poor,
}

class NutritionTip {
  final String id;
  final String title;
  final String description;
  final String category;
  final String? imageUrl;
  final List<String> tags;
  final bool isFeatured;
  final DateTime createdAt;
  final String source;

  NutritionTip({
    String? id,
    required this.title,
    required this.description,
    required this.category,
    this.imageUrl,
    this.tags = const [],
    this.isFeatured = false,
    DateTime? createdAt,
    this.source = 'Alzheimer\'s Association',
  }) : 
    id = id ?? const Uuid().v4(),
    createdAt = createdAt ?? DateTime.now();

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'category': category,
      'imageUrl': imageUrl,
      'tags': tags,
      'isFeatured': isFeatured,
      'createdAt': createdAt.toIso8601String(),
      'source': source,
    };
  }

  factory NutritionTip.fromJson(Map<String, dynamic> json) {
    return NutritionTip(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      category: json['category'],
      imageUrl: json['imageUrl'],
      tags: List<String>.from(json['tags'] ?? []),
      isFeatured: json['isFeatured'] ?? false,
      createdAt: DateTime.parse(json['createdAt']),
      source: json['source'] ?? 'Alzheimer\'s Association',
    );
  }
}

class WeightEntry {
  final String id;
  final String userId;
  final DateTime timestamp;
  final double weight; // in kg
  final String? notes;
  final Map<String, dynamic> metadata; // body fat %, muscle mass, etc.

  WeightEntry({
    String? id,
    required this.userId,
    required this.timestamp,
    required this.weight,
    this.notes,
    Map<String, dynamic>? metadata,
  }) : 
    id = id ?? const Uuid().v4(),
    metadata = metadata ?? {};

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'userId': userId,
      'timestamp': timestamp.toIso8601String(),
      'weight': weight,
      'notes': notes,
      'metadata': metadata,
    };
  }

  factory WeightEntry.fromJson(Map<String, dynamic> json) {
    return WeightEntry(
      id: json['id'],
      userId: json['userId'],
      timestamp: DateTime.parse(json['timestamp']),
      weight: (json['weight'] ?? 0.0).toDouble(),
      notes: json['notes'],
      metadata: Map<String, dynamic>.from(json['metadata'] ?? {}),
    );
  }
}


