import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../constants/app_constants.dart';
import '../../l10n/app_localizations.dart';

class CommunityEventsScreen extends StatefulWidget {
  const CommunityEventsScreen({super.key});

  @override
  State<CommunityEventsScreen> createState() => _CommunityEventsScreenState();
}

class _CommunityEventsScreenState extends State<CommunityEventsScreen> {
  final List<Map<String, dynamic>> _events = [
    {
      'id': '1',
      'title': 'Memory Café - Coffee & Conversation',
      'description': 'Join us for a relaxed morning of coffee, conversation, and memory-stimulating activities.',
      'location': 'Cambridge Community Centre',
      'date': DateTime.now().add(const Duration(days: 3)),
      'time': '10:00 AM - 12:00 PM',
      'category': 'Social',
      'maxParticipants': 20,
      'currentParticipants': 12,
      'isRegistrationRequired': true,
      'organizer': 'Cambridge Dementia Support Group',
      'contactInfo': 'contact@cambridgedementia.org',
    },
    {
      'id': '2',
      'title': 'Art Therapy Workshop',
      'description': 'Explore your creativity through guided art activities designed to stimulate memory and provide relaxation.',
      'location': 'Fitzwilliam Museum Education Room',
      'date': DateTime.now().add(const Duration(days: 7)),
      'time': '2:00 PM - 4:00 PM',
      'category': 'Arts',
      'maxParticipants': 15,
      'currentParticipants': 8,
      'isRegistrationRequired': true,
      'organizer': 'Fitzwilliam Museum',
      'contactInfo': 'education@fitzmuseum.cam.ac.uk',
    },
    {
      'id': '3',
      'title': 'Walking Group - Grantchester Meadows',
      'description': 'Gentle walk through beautiful meadows, perfect for socializing and light exercise.',
      'location': 'Grantchester Meadows',
      'date': DateTime.now().add(const Duration(days: 5)),
      'time': '9:30 AM - 11:00 AM',
      'category': 'Fitness',
      'maxParticipants': 25,
      'currentParticipants': 18,
      'isRegistrationRequired': false,
      'organizer': 'Cambridge Walking Group',
      'contactInfo': 'walking@cambridge.org',
    },
    {
      'id': '4',
      'title': 'Music & Memory Session',
      'description': 'Enjoy familiar songs and share memories they evoke. Music therapy for cognitive wellness.',
      'location': 'St. Mary\'s Church Hall',
      'date': DateTime.now().add(const Duration(days: 10)),
      'time': '3:00 PM - 4:30 PM',
      'category': 'Music',
      'maxParticipants': 30,
      'currentParticipants': 22,
      'isRegistrationRequired': true,
      'organizer': 'Cambridge Music Therapy Centre',
      'contactInfo': 'info@cambridgemusic.org',
    },
    {
      'id': '5',
      'title': 'Book Club - "The Man Who Mistook His Wife for a Hat"',
      'description': 'Discussion of Oliver Sacks\' fascinating case studies of neurological conditions.',
      'location': 'Cambridge Central Library',
      'date': DateTime.now().add(const Duration(days: 14)),
      'time': '7:00 PM - 8:30 PM',
      'category': 'Education',
      'maxParticipants': 12,
      'currentParticipants': 9,
      'isRegistrationRequired': true,
      'organizer': 'Cambridge Book Club',
      'contactInfo': 'bookclub@cambridge.org',
    },
  ];

  String? _selectedCategory;

  List<Map<String, dynamic>> get _filteredEvents {
    return _events.where((event) {
      final matchesCategory = _selectedCategory == null || event['category'] == _selectedCategory;
      final isUpcoming = (event['date'] as DateTime).isAfter(DateTime.now());
      return matchesCategory && isUpcoming;
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstants.backgroundColor,
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.communityEvents),
        backgroundColor: AppConstants.socialColor,
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
                colors: [AppConstants.socialColor, AppConstants.primaryTeal],
              ),
              borderRadius: BorderRadius.circular(AppConstants.radiusL),
            ),
            child: Column(
              children: [
                Text(
                  'Community Events & Activities',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: AppConstants.spacingS),
                Text(
                  AppLocalizations.of(context)!.joinLocalEventsDesignedToSupportCognitiveHealthAndSocialEngagement,
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

          // Events list
          Expanded(
            child: _filteredEvents.isEmpty
                ? Center(
                    child: Text(
                      'No upcoming events found for this category.',
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(color: AppConstants.textMuted),
                    ),
                  )
                : ListView.builder(
                    padding: EdgeInsets.only(
                      left: AppConstants.spacingM,
                      right: AppConstants.spacingM,
                      bottom: MediaQuery.of(context).padding.bottom + AppConstants.spacingM,
                    ),
                    itemCount: _filteredEvents.length,
                    itemBuilder: (context, index) {
                      final event = _filteredEvents[index];
                      return _buildEventCard(context, event);
                    },
                  ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryFilter() {
    final categories = [AppLocalizations.of(context)!.allEvents, AppLocalizations.of(context)!.social, AppLocalizations.of(context)!.arts, AppLocalizations.of(context)!.fitness, AppLocalizations.of(context)!.music, AppLocalizations.of(context)!.education];
    
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
        ? category == AppLocalizations.of(context)!.allEvents
        : _selectedCategory == category;
        
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppConstants.spacingS / 2),
      child: ChoiceChip(
        label: Text(category),
        selected: isSelected,
        onSelected: (selected) {
          setState(() {
            _selectedCategory = category == AppLocalizations.of(context)!.allEvents ? null : category;
          });
        },
        selectedColor: AppConstants.socialColor.withOpacity(0.2),
        labelStyle: TextStyle(
          color: isSelected ? AppConstants.socialColor : AppConstants.textSecondary,
          fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
        ),
        side: BorderSide(
          color: isSelected ? AppConstants.socialColor : AppConstants.borderColor,
        ),
      ),
    );
  }

  Widget _buildEventCard(BuildContext context, Map<String, dynamic> event) {
    final isFullyBooked = event['currentParticipants'] >= event['maxParticipants'];
    final canRegister = !isFullyBooked && event['isRegistrationRequired'];
    
    return Card(
      margin: const EdgeInsets.only(bottom: AppConstants.spacingM),
      child: InkWell(
        onTap: () => _showEventDetail(context, event),
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
                      color: _getCategoryColor(event['category']).withOpacity(0.1),
                      borderRadius: BorderRadius.circular(AppConstants.radiusS),
                    ),
                    child: Text(
                      event['category'],
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: _getCategoryColor(event['category']),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const Spacer(),
                  if (isFullyBooked)
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: AppConstants.spacingS, vertical: 4),
                      decoration: BoxDecoration(
                        color: AppConstants.errorColor.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(AppConstants.radiusS),
                      ),
                      child:                         Text(
                          AppLocalizations.of(context)!.fullyBooked,
                          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: AppConstants.errorColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                ],
              ),
              
              const SizedBox(height: AppConstants.spacingS),
              
              Text(
                event['title'],
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              
              const SizedBox(height: AppConstants.spacingS),
              
              Text(
                event['description'],
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: AppConstants.textSecondary,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              
              const SizedBox(height: AppConstants.spacingM),
              
              Row(
                children: [
                  Icon(Icons.location_on, size: 16, color: AppConstants.textMuted),
                  const SizedBox(width: 4),
                  Expanded(
                    child: Text(
                      event['location'],
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: AppConstants.textMuted,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
              
              const SizedBox(height: AppConstants.spacingS),
              
              Row(
                children: [
                  Icon(Icons.calendar_today, size: 16, color: AppConstants.textMuted),
                  const SizedBox(width: 4),
                  Text(
                    DateFormat('MMM d, yyyy').format(event['date']),
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: AppConstants.textMuted,
                    ),
                  ),
                  const SizedBox(width: AppConstants.spacingM),
                  Icon(Icons.access_time, size: 16, color: AppConstants.textMuted),
                  const SizedBox(width: 4),
                  Text(
                    event['time'],
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: AppConstants.textMuted,
                    ),
                  ),
                ],
              ),
              
              const SizedBox(height: AppConstants.spacingS),
              
              Row(
                children: [
                  Icon(Icons.people, size: 16, color: AppConstants.textMuted),
                  const SizedBox(width: 4),
                  Text(
                    '${event['currentParticipants']}/${event['maxParticipants']} participants',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: AppConstants.textMuted,
                    ),
                  ),
                ],
              ),
              
              const SizedBox(height: AppConstants.spacingM),
              
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: canRegister ? () => _registerForEvent(event) : null,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppConstants.socialColor,
                    foregroundColor: Colors.white,
                  ),
                  child: Text(
                    event['isRegistrationRequired']
                        ? (canRegister ? AppLocalizations.of(context)!.register : AppLocalizations.of(context)!.fullyBooked)
                        : AppLocalizations.of(context)!.joinEvent,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showEventDetail(BuildContext context, Map<String, dynamic> event) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(event['title']),
        content: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(event['description']),
              const SizedBox(height: AppConstants.spacingM),
              _buildDetailRow(Icons.location_on, AppLocalizations.of(context)!.location, event['location']),
              _buildDetailRow(Icons.calendar_today, AppLocalizations.of(context)!.date, DateFormat('EEEE, MMMM d, yyyy').format(event['date'])),
              _buildDetailRow(Icons.access_time, AppLocalizations.of(context)!.time, event['time']),
              _buildDetailRow(Icons.people, AppLocalizations.of(context)!.participants, '${event['currentParticipants']}/${event['maxParticipants']}'),
              _buildDetailRow(Icons.business, AppLocalizations.of(context)!.organizer, event['organizer']),
              _buildDetailRow(Icons.email, AppLocalizations.of(context)!.contact, event['contactInfo']),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(AppLocalizations.of(context)!.close),
          ),
          if (!event['isRegistrationRequired'] || event['currentParticipants'] < event['maxParticipants'])
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
                _registerForEvent(event);
              },
              child: Text(AppLocalizations.of(context)!.register),
            ),
        ],
      ),
    );
  }

  Widget _buildDetailRow(IconData icon, String label, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: AppConstants.spacingS),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, size: 16, color: AppConstants.textMuted),
          const SizedBox(width: AppConstants.spacingS),
          Text('${AppLocalizations.of(context)!.label}: ', style: const TextStyle(fontWeight: FontWeight.bold)),
          Expanded(child: Text(value)),
        ],
      ),
    );
  }

  void _registerForEvent(Map<String, dynamic> event) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(AppLocalizations.of(context)!.registerForEvent),
        content: Text('${AppLocalizations.of(context)!.register} for "${event['title']}"?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(AppLocalizations.of(context)!.cancel),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(AppLocalizations.of(context)!.registrationSuccessful),
                  backgroundColor: AppConstants.successColor,
                ),
              );
            },
            child: Text(AppLocalizations.of(context)!.register),
          ),
        ],
      ),
    );
  }

  Color _getCategoryColor(String category) {
    switch (category) {
      case 'Social':
        return AppConstants.socialColor;
      case 'Arts':
        return AppConstants.cognitiveColor;
      case 'Fitness':
        return AppConstants.fitnessColor;
      case 'Music':
        return AppConstants.primaryBlue;
      case 'Education':
        return AppConstants.primaryTeal;
      default:
        return AppConstants.textSecondary;
    }
  }
}