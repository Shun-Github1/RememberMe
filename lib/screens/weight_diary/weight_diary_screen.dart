import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../constants/app_constants.dart';
import '../../services/user_service.dart';
import '../../models/user_model.dart';
import '../../l10n/app_localizations.dart';

class WeightDiaryScreen extends StatefulWidget {
  const WeightDiaryScreen({super.key});

  @override
  State<WeightDiaryScreen> createState() => _WeightDiaryScreenState();
}

class _WeightDiaryScreenState extends State<WeightDiaryScreen> {
  final TextEditingController _weightController = TextEditingController();
  final TextEditingController _notesController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _weightController.dispose();
    _notesController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstants.backgroundColor,
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.weightDiary),
        backgroundColor: AppConstants.healthColor,
        foregroundColor: Colors.white,
      ),
      body: Consumer<UserService>(
        builder: (context, userService, child) {
          final user = userService.currentUser;
          if (user == null) {
            return Center(
              child: Text(AppLocalizations.of(context)!.noUserDataAvailable),
            );
          }

          return SingleChildScrollView(
            padding: EdgeInsets.only(
              left: AppConstants.spacingM,
              right: AppConstants.spacingM,
              top: AppConstants.spacingM,
              bottom: AppConstants.spacingM + MediaQuery.of(context).padding.bottom,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Current Weight Display
                _buildCurrentWeightCard(context, user),
                
                const SizedBox(height: AppConstants.spacingL),
                
                // Log New Weight
                _buildLogWeightCard(context, userService),
                
                const SizedBox(height: AppConstants.spacingL),
                
                // Weight History
                _buildWeightHistorySection(context),
                
                const SizedBox(height: AppConstants.spacingL),
                
                // BMI Information
                _buildBMIInformationCard(context, user),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildCurrentWeightCard(BuildContext context, UserModel user) {
    final currentWeight = user.healthProfile.currentWeight;
    final bmi = user.healthProfile.bmi;
    final bmiCategory = user.healthProfile.bmiCategory;
    
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(AppConstants.spacingL),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppLocalizations.of(context)!.currentWeight,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                if (currentWeight != null)
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppConstants.spacingS,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: AppConstants.primaryTeal.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(AppConstants.radiusS),
                    ),
                    child: Text(
                      AppLocalizations.of(context)!.updated,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: AppConstants.primaryTeal,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
              ],
            ),
            
            const SizedBox(height: AppConstants.spacingM),
            
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        currentWeight != null 
                            ? '${currentWeight.toStringAsFixed(1)} kg'
                            : AppLocalizations.of(context)!.notRecorded,
                        style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: currentWeight != null 
                              ? AppConstants.healthColor 
                              : AppConstants.textMuted,
                        ),
                      ),
                      Text(
                        AppLocalizations.of(context)!.weight,
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: AppConstants.textSecondary,
                        ),
                      ),
                    ],
                  ),
                ),
                
                if (bmi != null) ...[
                  Container(
                    width: 1,
                    height: 60,
                    color: AppConstants.borderColor,
                  ),
                  const SizedBox(width: AppConstants.spacingM),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          bmi.toStringAsFixed(1),
                          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: _getBMIColor(bmi),
                          ),
                        ),
                        Text(
                          'BMI (${bmiCategory ?? AppLocalizations.of(context)!.unknown})',
                          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: AppConstants.textSecondary,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ],
            ),
            
            if (user.healthProfile.height == null) ...[
              const SizedBox(height: AppConstants.spacingM),
              Container(
                padding: const EdgeInsets.all(AppConstants.spacingM),
                decoration: BoxDecoration(
                  color: AppConstants.warningColor.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(AppConstants.radiusM),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.info,
                      color: AppConstants.warningColor,
                      size: 20,
                    ),
                    const SizedBox(width: AppConstants.spacingS),
                    Expanded(
                      child: Text(
                        AppLocalizations.of(context)!.addYourHeightToCalculateBMI,
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: AppConstants.warningColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildLogWeightCard(BuildContext context, UserService userService) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(AppConstants.spacingL),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppLocalizations.of(context)!.logNewWeight,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              
              const SizedBox(height: AppConstants.spacingM),
              
              TextFormField(
                controller: _weightController,
                keyboardType: TextInputType.numberWithOptions(decimal: true),
                decoration: InputDecoration(
                  labelText: '${AppLocalizations.of(context)!.weight} (kg)',
                  hintText: AppLocalizations.of(context)!.enterYourWeight,
                  suffixText: 'kg',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return AppLocalizations.of(context)!.pleaseEnterYourWeight;
                  }
                  final weight = double.tryParse(value);
                  if (weight == null) {
                    return AppLocalizations.of(context)!.pleaseEnterAValidNumber;
                  }
                  if (weight < 20 || weight > 300) {
                    return 'Please enter a realistic weight (20-300 kg)';
                  }
                  return null;
                },
              ),
              
              const SizedBox(height: AppConstants.spacingM),
              
              TextFormField(
                controller: _notesController,
                maxLines: 2,
                decoration: const InputDecoration(
                  labelText: 'Notes (optional)',
                  hintText: 'Any notes about today\'s measurement',
                ),
              ),
              
              const SizedBox(height: AppConstants.spacingL),
              
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => _logWeight(userService),
                  child: Text(AppLocalizations.of(context)!.logWeight),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildWeightHistorySection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppLocalizations.of(context)!.weightHistory,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        
        const SizedBox(height: AppConstants.spacingS),
        
        Text(
          AppLocalizations.of(context)!.trackYourWeightChangesOverTime,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            color: AppConstants.textSecondary,
          ),
        ),
        
        const SizedBox(height: AppConstants.spacingM),
        
        Card(
          child: Padding(
            padding: const EdgeInsets.all(AppConstants.spacingL),
            child: Column(
              children: [
                Icon(
                  Icons.show_chart,
                  size: 48,
                  color: AppConstants.textMuted,
                ),
                const SizedBox(height: AppConstants.spacingM),
                Text(
                  AppLocalizations.of(context)!.weightChartComingSoon,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: AppConstants.spacingS),
                Text(
                  'Visualize your weight trends and progress over time with interactive charts.',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: AppConstants.textSecondary,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildBMIInformationCard(BuildContext context, UserModel user) {
    final bmi = user.healthProfile.bmi;
    
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(AppConstants.spacingL),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppLocalizations.of(context)!.bmiInformation,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            
            const SizedBox(height: AppConstants.spacingM),
            
            if (bmi != null) ...[
              Container(
                padding: const EdgeInsets.all(AppConstants.spacingM),
                decoration: BoxDecoration(
                  color: _getBMIColor(bmi).withOpacity(0.1),
                  borderRadius: BorderRadius.circular(AppConstants.radiusM),
                ),
                child: Row(
                  children: [
                    Icon(
                      _getBMIIcon(bmi),
                      color: _getBMIColor(bmi),
                      size: 24,
                    ),
                    const SizedBox(width: AppConstants.spacingM),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Your BMI: ${bmi.toStringAsFixed(1)}',
                            style: Theme.of(context).textTheme.titleSmall?.copyWith(
                              fontWeight: FontWeight.bold,
                              color: _getBMIColor(bmi),
                            ),
                          ),
                          Text(
                            _getBMICategory(bmi),
                            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              color: _getBMIColor(bmi),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ] else ...[
              Container(
                padding: const EdgeInsets.all(AppConstants.spacingM),
                decoration: BoxDecoration(
                  color: AppConstants.infoColor.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(AppConstants.radiusM),
                ),
                child: Row(
                  children: [
                    const Icon(
                      Icons.info,
                      color: AppConstants.infoColor,
                      size: 24,
                    ),
                    const SizedBox(width: AppConstants.spacingM),
                    Expanded(
                      child: Text(
                        AppLocalizations.of(context)!.addYourHeightAndWeightToCalculateYourBMI,
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: AppConstants.infoColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
            
            const SizedBox(height: AppConstants.spacingM),
            
            const Text(
              'BMI Categories:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            
            const SizedBox(height: AppConstants.spacingS),
            
            _buildBMIRangeItem(AppLocalizations.of(context)!.underweight, AppLocalizations.of(context)!.below18Point5, AppConstants.infoColor),
            _buildBMIRangeItem(AppLocalizations.of(context)!.normalWeight, AppLocalizations.of(context)!.bmiRange18Point5To24Point9, AppConstants.successColor),
            _buildBMIRangeItem(AppLocalizations.of(context)!.overweight, AppLocalizations.of(context)!.bmiRange25Point0To29Point9, AppConstants.warningColor),
            _buildBMIRangeItem(AppLocalizations.of(context)!.obese, AppLocalizations.of(context)!.bmiRange30Point0AndAbove, AppConstants.errorColor),
          ],
        ),
      ),
    );
  }

  Widget _buildBMIRangeItem(String category, String range, Color color) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          Container(
            width: 12,
            height: 12,
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,
            ),
          ),
          const SizedBox(width: AppConstants.spacingS),
          Expanded(
            child: Text(
              '$category: $range',
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _logWeight(UserService userService) async {
    if (!_formKey.currentState!.validate()) return;
    
    final weight = double.parse(_weightController.text);
    
    // Update user's current weight
    final updatedHealthProfile = userService.currentUser!.healthProfile.copyWith(
      currentWeight: weight,
    );
    
    await userService.updateHealthProfile(updatedHealthProfile);
    
    if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('${AppLocalizations.of(context)!.weightLogged}: ${weight.toStringAsFixed(1)} kg'),
          backgroundColor: AppConstants.successColor,
        ),
      );
      
      _weightController.clear();
      _notesController.clear();
    }
  }

  Color _getBMIColor(double bmi) {
    if (bmi < 18.5) return AppConstants.infoColor;
    if (bmi < 25) return AppConstants.successColor;
    if (bmi < 30) return AppConstants.warningColor;
    return AppConstants.errorColor;
  }

  IconData _getBMIIcon(double bmi) {
    if (bmi < 18.5) return Icons.trending_down;
    if (bmi < 25) return Icons.check_circle;
    if (bmi < 30) return Icons.warning;
    return Icons.error;
  }

  String _getBMICategory(double bmi) {
    if (bmi < 18.5) return AppLocalizations.of(context)!.underweight;
    if (bmi < 25) return AppLocalizations.of(context)!.normalWeight;
    if (bmi < 30) return AppLocalizations.of(context)!.overweight;
    return AppLocalizations.of(context)!.obese;
  }
}
