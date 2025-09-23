import 'package:flutter/material.dart';

import '../../constants/app_constants.dart';
import '../../models/cognitive_model.dart';
import '../../l10n/app_localizations.dart';

class CognitiveTrainingScreen extends StatefulWidget {
  const CognitiveTrainingScreen({super.key});

  @override
  State<CognitiveTrainingScreen> createState() => _CognitiveTrainingScreenState();
}

class _CognitiveTrainingScreenState extends State<CognitiveTrainingScreen> with TickerProviderStateMixin {
  late TabController _tabController;
  List<CognitiveExercise> _activities = [];
  List<ReminiscenceSession> _reminiscenceSessions = [];
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _loadCognitiveData();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  Future<void> _loadCognitiveData() async {
    setState(() {
      _isLoading = true;
    });

    // Mock data
    await Future.delayed(const Duration(seconds: 1));
    
    setState(() {
      _activities = [
        CognitiveExercise(
          id: '1',
          title: AppLocalizations.of(context)!.dailyBrainTeaser,
          description: AppLocalizations.of(context)!.aQuickPuzzleToStartYourDay,
          type: ExerciseType.problemSolving,
          category: ExerciseCategory.brainTraining,
          difficulty: DifficultyLevel.beginner,
          estimatedDurationMinutes: 5,
          instructions: ['Solve the puzzle.', 'Submit your answer.'],
          content: {'puzzle': 'What has an eye, but cannot see?'},
          tags: ['puzzle', 'daily'],
        ),
        CognitiveExercise(
          id: '2',
          title: AppLocalizations.of(context)!.memoryMatchGame,
          description: AppLocalizations.of(context)!.matchPairsOfCardsToImproveYourShortTermMemory,
          type: ExerciseType.memory,
          category: ExerciseCategory.brainTraining,
          difficulty: DifficultyLevel.intermediate,
          estimatedDurationMinutes: 10,
          instructions: ['Flip two cards.', 'If they match, they disappear.', 'Match all pairs.'],
          content: {'pairs': 8},
          tags: ['game', 'memory'],
        ),
        CognitiveExercise(
          id: '3',
          title: AppLocalizations.of(context)!.wordAssociation,
          description: AppLocalizations.of(context)!.connectWordsAndExpandYourVocabulary,
          type: ExerciseType.language,
          category: ExerciseCategory.brainTraining,
          difficulty: DifficultyLevel.beginner,
          estimatedDurationMinutes: 7,
          instructions: ['Start with a word.', 'List associated words.', 'Try to make a chain.'],
          content: {'startWord': 'apple'},
          tags: ['language', 'vocabulary'],
        ),
      ];

      _reminiscenceSessions = [
        ReminiscenceSession(
          id: 'rs1',
          userId: 'mock_user_id',
          type: ReminiscenceType.childhood,
          startedAt: DateTime.now().subtract(const Duration(days: 5)),
          completedAt: DateTime.now().subtract(const Duration(days: 5, minutes: 20)),
          prompts: {'main': 'What was your favorite childhood game or toy?'},
          responses: {'main': 'My favorite toy was a red train set. I spent hours building tracks and imagining journeys.'},
          memories: ['red train set', 'building tracks', 'imaginary journeys'],
          emotionalRating: 5,
          status: SessionStatus.completed,
        ),
        ReminiscenceSession(
          id: 'rs2',
          userId: 'mock_user_id',
          type: ReminiscenceType.family,
          startedAt: DateTime.now().subtract(const Duration(days: 2)),
          prompts: {'main': 'Describe a memorable family holiday.'},
          responses: {},
          memories: [],
          emotionalRating: 3,
          status: SessionStatus.inProgress,
        ),
      ];
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstants.backgroundColor,
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.cognitiveTraining),
        backgroundColor: AppConstants.cognitiveColor,
        foregroundColor: Colors.white,
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          labelColor: Colors.white,
          unselectedLabelColor: Colors.white70,
          tabs: [
            Tab(text: AppLocalizations.of(context)!.activities),
            Tab(text: AppLocalizations.of(context)!.reminiscence),
            Tab(text: AppLocalizations.of(context)!.progress),
          ],
        ),
      ),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : TabBarView(
              controller: _tabController,
              children: [
                _buildActivitiesTab(),
                _buildReminiscenceTab(),
                _buildProgressTab(),
              ],
            ),
    );
  }

  Widget _buildActivitiesTab() {
    return ListView.builder(
      padding: const EdgeInsets.all(AppConstants.spacingM),
      itemCount: _activities.length,
      itemBuilder: (context, index) {
        final activity = _activities[index];
        return _buildActivityCard(activity);
      },
    );
  }

  Widget _buildReminiscenceTab() {
    return ListView.builder(
      padding: const EdgeInsets.all(AppConstants.spacingM),
      itemCount: _reminiscenceSessions.length,
      itemBuilder: (context, index) {
        final session = _reminiscenceSessions[index];
        return _buildReminiscenceCard(session);
      },
    );
  }

  Widget _buildProgressTab() {
    final completedActivities = _activities.where((a) => a.isActive).length;
    final completedReminiscence = _reminiscenceSessions.where((s) => s.isCompleted).length;
    
    return SingleChildScrollView(
      padding: const EdgeInsets.all(AppConstants.spacingM),
      child: Column(
        children: [
          _buildProgressOverview(),
          const SizedBox(height: AppConstants.spacingL),
          _buildActivityProgress(),
          const SizedBox(height: AppConstants.spacingL),
          _buildReminiscenceProgress(),
        ],
      ),
    );
  }

  Widget _buildActivityCard(CognitiveExercise activity) {
    final isCompleted = activity.isActive;
    final difficultyColor = _getDifficultyColor(activity.difficulty);
    
    return Card(
      margin: const EdgeInsets.only(bottom: AppConstants.spacingM),
      child: InkWell(
        onTap: () => _startActivity(activity),
        borderRadius: BorderRadius.circular(AppConstants.radiusM),
        child: Padding(
          padding: const EdgeInsets.all(AppConstants.spacingM),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: AppConstants.spacingS, vertical: 4),
                    decoration: BoxDecoration(
                      color: AppConstants.cognitiveColor.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(AppConstants.radiusS),
                    ),
                    child: Text(
                      activity.category.name,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: AppConstants.cognitiveColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const Spacer(),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: AppConstants.spacingS, vertical: 4),
                    decoration: BoxDecoration(
                      color: difficultyColor.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(AppConstants.radiusS),
                    ),
                    child: Text(
                      activity.difficulty.name,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: difficultyColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  if (isCompleted) ...[
                    const SizedBox(width: AppConstants.spacingS),
                    Icon(Icons.check_circle, color: AppConstants.successColor, size: 16),
                  ],
                ],
              ),
              
              const SizedBox(height: AppConstants.spacingS),
              
              Text(
                activity.title,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
              ),
              
              const SizedBox(height: AppConstants.spacingS),
              
              Text(
                activity.description,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: AppConstants.textSecondary),
              ),
              
              const SizedBox(height: AppConstants.spacingM),
              
              Row(
                children: [
                  Icon(Icons.timer, size: 16, color: AppConstants.textMuted),
                  const SizedBox(width: 4),
                  Text('${activity.estimatedDurationMinutes} min', 
                       style: Theme.of(context).textTheme.bodySmall?.copyWith(color: AppConstants.textMuted)),
                  const Spacer(),
                  ElevatedButton(
                    onPressed: () => _startActivity(activity),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppConstants.cognitiveColor,
                      foregroundColor: Colors.white,
                    ),
                    child: Text(isCompleted ? AppLocalizations.of(context)!.continueButton : AppLocalizations.of(context)!.start),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildReminiscenceCard(ReminiscenceSession session) {
    final isCompleted = session.isCompleted;
    
    return Card(
      margin: const EdgeInsets.only(bottom: AppConstants.spacingM),
      child: InkWell(
        onTap: () => _startReminiscence(session),
        borderRadius: BorderRadius.circular(AppConstants.radiusM),
        child: Padding(
          padding: const EdgeInsets.all(AppConstants.spacingM),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: AppConstants.spacingS, vertical: 4),
                    decoration: BoxDecoration(
                      color: AppConstants.primaryTeal.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(AppConstants.radiusS),
                    ),
                    child: Text(
                      session.type.name,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: AppConstants.primaryTeal,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const Spacer(),
                  if (isCompleted)
                    Icon(Icons.check_circle, color: AppConstants.successColor, size: 16),
                ],
              ),
              
              const SizedBox(height: AppConstants.spacingS),
              
              Text(
                session.prompts['main'] ?? AppLocalizations.of(context)!.noPromptAvailable,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
              ),
              
              const SizedBox(height: AppConstants.spacingS),
              
              Row(
                children: [
                  Icon(Icons.hourglass_empty, size: 16, color: AppConstants.textMuted),
                  const SizedBox(width: 4),
                  Text('Status: ${session.status.name}', 
                       style: Theme.of(context).textTheme.bodySmall?.copyWith(color: AppConstants.textMuted)),
                  const Spacer(),
                  ElevatedButton(
                    onPressed: () => _startReminiscence(session),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppConstants.primaryTeal,
                      foregroundColor: Colors.white,
                    ),
                    child: Text(isCompleted ? AppLocalizations.of(context)!.review : AppLocalizations.of(context)!.start),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProgressOverview() {
    final completedActivities = _activities.where((a) => a.isActive).length;
    final completedReminiscence = _reminiscenceSessions.where((s) => s.isCompleted).length;
    
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(AppConstants.spacingL),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppLocalizations.of(context)!.trainingProgress,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
            ),
            
            const SizedBox(height: AppConstants.spacingM),
            
            Row(
              children: [
                Expanded(
                  child: _buildProgressCard(AppLocalizations.of(context)!.activities, completedActivities, _activities.length, Icons.psychology, AppConstants.cognitiveColor),
                ),
                const SizedBox(width: AppConstants.spacingM),
                Expanded(
                  child: _buildProgressCard(AppLocalizations.of(context)!.reminiscence, completedReminiscence, _reminiscenceSessions.length, Icons.memory, AppConstants.primaryTeal),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProgressCard(String title, int completed, int total, IconData icon, Color color) {
    final progress = total > 0 ? completed / total : 0.0;
    
    return Container(
      padding: const EdgeInsets.all(AppConstants.spacingM),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(AppConstants.radiusM),
      ),
      child: Column(
        children: [
          Icon(icon, color: color, size: 24),
          const SizedBox(height: AppConstants.spacingS),
          Text('$completed/$total', style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold, color: color)),
          Text(title, style: Theme.of(context).textTheme.bodySmall?.copyWith(color: AppConstants.textSecondary)),
          const SizedBox(height: AppConstants.spacingS),
          LinearProgressIndicator(
            value: progress,
            backgroundColor: AppConstants.borderColor,
            valueColor: AlwaysStoppedAnimation<Color>(color),
          ),
        ],
      ),
    );
  }

  Widget _buildActivityProgress() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(AppConstants.spacingL),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppLocalizations.of(context)!.activityProgress,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: AppConstants.spacingM),
            ..._activities.map((activity) => ListTile(
              leading: Icon(_getActivityIcon(activity.type), color: AppConstants.cognitiveColor),
              title: Text(activity.title),
              subtitle: Text('${activity.estimatedDurationMinutes} min • ${activity.difficulty.name}'),
              trailing: Icon(
                activity.isActive ? Icons.check_circle : Icons.play_circle_outline,
                color: activity.isActive ? AppConstants.successColor : AppConstants.textMuted,
              ),
            )),
          ],
        ),
      ),
    );
  }

  Widget _buildReminiscenceProgress() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(AppConstants.spacingL),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppLocalizations.of(context)!.reminiscenceSessions,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: AppConstants.spacingM),
            ..._reminiscenceSessions.map((session) => ListTile(
              leading: Icon(_getReminiscenceIcon(session.type), color: AppConstants.primaryTeal),
              title: Text(session.prompts['main'] ?? AppLocalizations.of(context)!.untitledSession),
              subtitle: Text('${session.type.name} • ${session.status.name}'),
              trailing: Icon(
                session.isCompleted ? Icons.check_circle : Icons.play_circle_outline,
                color: session.isCompleted ? AppConstants.successColor : AppConstants.textMuted,
              ),
            )),
          ],
        ),
      ),
    );
  }

  Color _getDifficultyColor(DifficultyLevel difficulty) {
    switch (difficulty) {
      case DifficultyLevel.beginner:
        return AppConstants.successColor;
      case DifficultyLevel.intermediate:
        return AppConstants.warningColor;
      case DifficultyLevel.advanced:
        return AppConstants.errorColor;
    }
  }

  IconData _getActivityIcon(ExerciseType type) {
    switch (type) {
      case ExerciseType.memory:
        return Icons.memory;
      case ExerciseType.attention:
        return Icons.center_focus_strong;
      case ExerciseType.problemSolving:
        return Icons.psychology;
      case ExerciseType.language:
        return Icons.translate;
      default:
        return Icons.psychology;
    }
  }

  IconData _getReminiscenceIcon(ReminiscenceType type) {
    switch (type) {
      case ReminiscenceType.childhood:
        return Icons.child_care;
      case ReminiscenceType.family:
        return Icons.family_restroom;
      case ReminiscenceType.music:
        return Icons.music_note;
      default:
        return Icons.memory;
    }
  }

  void _startActivity(CognitiveExercise activity) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(activity.title),
        content: Text(activity.description),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(AppLocalizations.of(context)!.cancel),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(AppLocalizations.of(context)!.activityStartedMock)),
              );
            },
            child: Text(AppLocalizations.of(context)!.start),
          ),
        ],
      ),
    );
  }

  void _startReminiscence(ReminiscenceSession session) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(AppLocalizations.of(context)!.reminiscenceSession),
        content: Text(session.prompts['main'] ?? AppLocalizations.of(context)!.noPromptAvailable),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(AppLocalizations.of(context)!.cancel),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(AppLocalizations.of(context)!.reminiscenceSessionStartedMock)),
              );
            },
            child: Text(AppLocalizations.of(context)!.start),
          ),
        ],
      ),
    );
  }
}