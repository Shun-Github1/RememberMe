import 'package:flutter/material.dart';

import '../../constants/app_constants.dart';
import '../../l10n/app_localizations.dart';

class NutritionTipsScreen extends StatefulWidget {
  const NutritionTipsScreen({super.key});

  @override
  State<NutritionTipsScreen> createState() => _NutritionTipsScreenState();
}

class _NutritionTipsScreenState extends State<NutritionTipsScreen> {
  final List<Map<String, dynamic>> _tips = [
    {
      'id': '1',
      'title': 'The Mediterranean Diet',
      'content': 'Focus on fruits, vegetables, whole grains, and healthy fats like olive oil. This diet has been linked to reduced dementia risk.',
      'category': 'Brain Health',
      'tags': ['diet', 'brain health', 'mediterranean'],
      'isBookmarked': false,
    },
    {
      'id': '2',
      'title': 'Stay Hydrated',
      'content': 'Drink 6-8 glasses of water daily. Proper hydration is essential for brain function and overall health.',
      'category': 'Hydration',
      'tags': ['hydration', 'water', 'health'],
      'isBookmarked': false,
    },
    {
      'id': '3',
      'title': 'Omega-3 Fatty Acids',
      'content': 'Include fish like salmon, mackerel, and sardines in your diet. Omega-3s support brain health and may reduce inflammation.',
      'category': 'Brain Health',
      'tags': ['omega-3', 'fish', 'brain health'],
      'isBookmarked': false,
    },
    {
      'id': '4',
      'title': 'Antioxidant-Rich Foods',
      'content': 'Eat berries, dark leafy greens, and colorful vegetables. Antioxidants help protect brain cells from damage.',
      'category': 'General',
      'tags': ['antioxidants', 'berries', 'vegetables'],
      'isBookmarked': false,
    },
    {
      'id': '5',
      'title': 'Limit Processed Foods',
      'content': 'Reduce intake of processed meats, sugary snacks, and fried foods. These can contribute to inflammation and cognitive decline.',
      'category': 'General',
      'tags': ['processed foods', 'health', 'diet'],
      'isBookmarked': false,
    },
    {
      'id': '6',
      'title': 'Vitamin D for Brain Health',
      'content': 'Get adequate vitamin D through sunlight, fortified foods, or supplements. Vitamin D deficiency has been linked to cognitive issues.',
      'category': 'Vitamins',
      'tags': ['vitamin d', 'sunlight', 'supplements'],
      'isBookmarked': false,
    },
  ];

  String? _selectedCategory;

  List<Map<String, dynamic>> get _filteredTips {
    return _tips.where((tip) {
      final matchesCategory = _selectedCategory == null || tip['category'] == _selectedCategory;
      return matchesCategory;
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstants.backgroundColor,
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.nutritionTips),
        backgroundColor: AppConstants.nutritionColor,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          // Header
          Container(
            margin: const EdgeInsets.all(AppConstants.spacingM),
            padding: const EdgeInsets.all(AppConstants.spacingL),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [AppConstants.nutritionColor, AppConstants.primaryTeal],
              ),
              borderRadius: BorderRadius.circular(AppConstants.radiusL),
            ),
            child: Column(
              children: [
                Text(
                  AppLocalizations.of(context)!.healthyEatingForBrainHealth,
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: AppConstants.spacingS),
                Text(
                  'Evidence-based nutrition tips to support cognitive health and overall wellbeing',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Colors.white.withOpacity(0.9),
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),

          // Category filter
          _buildCategoryFilter(),

          // Tips list
          Expanded(
            child: _filteredTips.isEmpty
                ? Center(
                    child: Text(
                      'No tips found for this category.',
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(color: AppConstants.textMuted),
                    ),
                  )
                : ListView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: AppConstants.spacingM),
                    itemCount: _filteredTips.length,
                    itemBuilder: (context, index) {
                      final tip = _filteredTips[index];
                      return _buildTipCard(context, tip);
                    },
                  ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryFilter() {
    final categories = [AppLocalizations.of(context)!.allTips, AppLocalizations.of(context)!.brainHealth, AppLocalizations.of(context)!.hydration, AppLocalizations.of(context)!.vitamins, AppLocalizations.of(context)!.general];
    
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: AppConstants.spacingM, vertical: AppConstants.spacingS),
      color: AppConstants.cardColor,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: categories.map((category) => _buildFilterChip(category)).toList(),
        ),
      ),
    );
  }

  Widget _buildFilterChip(String category) {
    final isSelected = _selectedCategory == null 
        ? category == AppLocalizations.of(context)!.allTips
        : _selectedCategory == category;
        
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppConstants.spacingS / 2),
      child: ChoiceChip(
        label: Text(category),
        selected: isSelected,
        onSelected: (selected) {
          setState(() {
            _selectedCategory = category == AppLocalizations.of(context)!.allTips ? null : category;
          });
        },
        selectedColor: AppConstants.nutritionColor.withOpacity(0.2),
        labelStyle: TextStyle(
          color: isSelected ? AppConstants.nutritionColor : AppConstants.textSecondary,
          fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
        ),
        side: BorderSide(
          color: isSelected ? AppConstants.nutritionColor : AppConstants.borderColor,
        ),
      ),
    );
  }

  Widget _buildTipCard(BuildContext context, Map<String, dynamic> tip) {
    return Card(
      margin: const EdgeInsets.only(bottom: AppConstants.spacingM),
      child: InkWell(
        onTap: () => _showTipDetail(context, tip),
        borderRadius: BorderRadius.circular(AppConstants.radiusM),
        child: Padding(
          padding: const EdgeInsets.all(AppConstants.spacingL),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: AppConstants.spacingS, vertical: 4),
                    decoration: BoxDecoration(
                      color: _getCategoryColor(tip['category']).withOpacity(0.1),
                      borderRadius: BorderRadius.circular(AppConstants.radiusS),
                    ),
                    child: Text(
                      tip['category'],
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: _getCategoryColor(tip['category']),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () => _toggleBookmark(tip),
                    icon: Icon(
                      tip['isBookmarked'] ? Icons.bookmark : Icons.bookmark_border,
                      color: tip['isBookmarked'] ? AppConstants.nutritionColor : AppConstants.textMuted,
                    ),
                  ),
                ],
              ),
              
              const SizedBox(height: AppConstants.spacingS),
              
              Text(
                tip['title'],
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              
              const SizedBox(height: AppConstants.spacingS),
              
              Text(
                tip['content'],
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: AppConstants.textSecondary,
                  height: 1.5,
                ),
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
              
              if ((tip['tags'] as List<String>).isNotEmpty) ...[
                const SizedBox(height: AppConstants.spacingM),
                Wrap(
                  spacing: AppConstants.spacingS / 2,
                  runSpacing: AppConstants.spacingS / 2,
                  children: (tip['tags'] as List<String>).map((tag) => Chip(
                    label: Text(tag),
                    backgroundColor: AppConstants.nutritionColor.withOpacity(0.1),
                    labelStyle: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: AppConstants.nutritionColor,
                    ),
                  )).toList(),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }

  void _showTipDetail(BuildContext context, Map<String, dynamic> tip) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Row(
          children: [
            Expanded(child: Text(tip['title'])),
            IconButton(
              onPressed: () {
                Navigator.pop(context);
                _toggleBookmark(tip);
              },
              icon: Icon(
                tip['isBookmarked'] ? Icons.bookmark : Icons.bookmark_border,
                color: tip['isBookmarked'] ? AppConstants.nutritionColor : AppConstants.textMuted,
              ),
            ),
          ],
        ),
        content: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: AppConstants.spacingS, vertical: 4),
                decoration: BoxDecoration(
                  color: _getCategoryColor(tip['category']).withOpacity(0.1),
                  borderRadius: BorderRadius.circular(AppConstants.radiusS),
                ),
                child: Text(
                  tip['category'],
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: _getCategoryColor(tip['category']),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              
              const SizedBox(height: AppConstants.spacingM),
              
              Text(
                tip['content'],
                style: const TextStyle(height: 1.5),
              ),
              
              if ((tip['tags'] as List<String>).isNotEmpty) ...[
                const SizedBox(height: AppConstants.spacingM),
                Text(
                  'Tags:',
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: AppConstants.spacingS),
                Wrap(
                  spacing: AppConstants.spacingS / 2,
                  runSpacing: AppConstants.spacingS / 2,
                  children: (tip['tags'] as List<String>).map((tag) => Chip(
                    label: Text(tag),
                    backgroundColor: AppConstants.nutritionColor.withOpacity(0.1),
                    labelStyle: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: AppConstants.nutritionColor,
                    ),
                  )).toList(),
                ),
              ],
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(AppLocalizations.of(context)!.close),
          ),
        ],
      ),
    );
  }

  void _toggleBookmark(Map<String, dynamic> tip) {
    setState(() {
      final index = _tips.indexWhere((t) => t['id'] == tip['id']);
      if (index != -1) {
        _tips[index]['isBookmarked'] = !_tips[index]['isBookmarked'];
      }
    });
    
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(tip['isBookmarked'] ? AppLocalizations.of(context)!.tipBookmarked : AppLocalizations.of(context)!.bookmarkRemoved),
        backgroundColor: AppConstants.successColor,
      ),
    );
  }

  Color _getCategoryColor(String category) {
    switch (category) {
      case 'Brain Health':
        return AppConstants.cognitiveColor;
      case 'Hydration':
        return AppConstants.primaryBlue;
      case 'Vitamins':
        return AppConstants.warningColor;
      case 'General':
        return AppConstants.nutritionColor;
      default:
        return AppConstants.textSecondary;
    }
  }
}