import 'package:flutter/material.dart';

import '../../constants/app_constants.dart';
import '../../l10n/app_localizations.dart';

class EncyclopediaScreen extends StatefulWidget {
  const EncyclopediaScreen({super.key});

  @override
  State<EncyclopediaScreen> createState() => _EncyclopediaScreenState();
}

class _EncyclopediaScreenState extends State<EncyclopediaScreen> {
  final List<Map<String, dynamic>> _entries = [
    {
      'id': '1',
      'title': 'What is Dementia?',
      'content': 'Dementia is a general term for a decline in mental ability severe enough to interfere with daily life. Memory loss is an example. Alzheimer\'s is the most common type of dementia. Dementia is not a single disease; it\'s an overall term that covers a wide range of specific medical conditions, including Alzheimer\'s disease. Disorders grouped under the general term "dementia" are caused by abnormal brain changes. These changes trigger a decline in thinking skills, also known as cognitive abilities, severe enough to impair daily life and independent function. They also affect behavior, feelings and relationships.',
      'category': 'General Information',
      'tags': ['dementia', 'definition', 'overview'],
      'isBookmarked': false,
    },
    {
      'id': '2',
      'title': 'Early Signs and Symptoms',
      'content': 'The early signs of dementia are very subtle and vague and may not be immediately obvious. Common early symptoms include: 1) Memory loss that disrupts daily life, 2) Challenges in planning or solving problems, 3) Difficulty completing familiar tasks, 4) Confusion with time or place, 5) Trouble understanding visual images and spatial relationships, 6) New problems with words in speaking or writing, 7) Misplacing things and losing the ability to retrace steps, 8) Decreased or poor judgment, 9) Withdrawal from work or social activities, 10) Changes in mood and personality. It\'s important to note that everyone experiences some of these symptoms occasionally, but in dementia, they become more frequent and severe.',
      'category': 'Symptoms',
      'tags': ['symptoms', 'early signs', 'warning signs'],
      'isBookmarked': false,
    },
    {
      'id': '3',
      'title': 'Risk Factors for Dementia',
      'content': 'While some risk factors for dementia cannot be changed, others can be managed to help reduce your risk. Unchangeable risk factors include: Age (risk increases with age), Family history, Genetics. Modifiable risk factors include: Cardiovascular health (high blood pressure, diabetes, smoking, obesity), Physical inactivity, Poor diet, Excessive alcohol consumption, Social isolation, Cognitive inactivity. Research shows that maintaining a healthy lifestyle, staying socially active, and engaging in regular physical and mental exercise can help reduce the risk of developing dementia.',
      'category': 'Risk Factors',
      'tags': ['risk factors', 'prevention', 'lifestyle'],
      'isBookmarked': false,
    },
    {
      'id': '4',
      'title': 'Types of Dementia',
      'content': 'There are several types of dementia, each with different causes and characteristics: 1) Alzheimer\'s Disease - Most common type, accounts for 60-80% of cases, 2) Vascular Dementia - Caused by reduced blood flow to the brain, 3) Lewy Body Dementia - Characterized by abnormal protein deposits, 4) Frontotemporal Dementia - Affects the frontal and temporal lobes, 5) Mixed Dementia - Combination of different types, 6) Parkinson\'s Disease Dementia - Associated with Parkinson\'s disease, 7) Creutzfeldt-Jakob Disease - Rare and rapidly progressing, 8) Normal Pressure Hydrocephalus - Caused by fluid buildup in the brain.',
      'category': 'Types',
      'tags': ['alzheimer\'s', 'vascular', 'types', 'classification'],
      'isBookmarked': false,
    },
    {
      'id': '5',
      'title': 'Diagnosis and Assessment',
      'content': 'There is no single test to diagnose dementia. Doctors use a variety of approaches to make a diagnosis: 1) Medical history and physical examination, 2) Cognitive and neuropsychological tests, 3) Brain imaging (CT, MRI, PET scans), 4) Laboratory tests to rule out other conditions, 5) Psychiatric evaluation. Early diagnosis is important as it allows for better planning, access to treatments, and participation in clinical trials. If you or a loved one is experiencing symptoms, it\'s important to see a healthcare provider as soon as possible.',
      'category': 'Diagnosis',
      'tags': ['diagnosis', 'testing', 'assessment', 'medical'],
      'isBookmarked': false,
    },
    {
      'id': '6',
      'title': 'Treatment and Management',
      'content': 'While there is no cure for dementia, there are treatments and strategies that can help manage symptoms and improve quality of life: 1) Medications - Cholinesterase inhibitors and memantine can help with cognitive symptoms, 2) Non-drug approaches - Cognitive stimulation therapy, reminiscence therapy, music therapy, 3) Lifestyle modifications - Regular exercise, healthy diet, social engagement, 4) Support services - Day programs, respite care, support groups, 5) Environmental modifications - Safety measures, routine establishment, 6) Caregiver support - Education, counseling, respite services. Treatment plans are individualized based on the type of dementia, stage of disease, and personal preferences.',
      'category': 'Treatment',
      'tags': ['treatment', 'management', 'medications', 'therapy'],
      'isBookmarked': false,
    },
    {
      'id': '7',
      'title': 'Prevention Strategies',
      'content': 'Research suggests that certain lifestyle choices may help reduce the risk of developing dementia: 1) Physical exercise - Regular aerobic exercise improves brain health, 2) Mental stimulation - Engaging in cognitively challenging activities, 3) Social engagement - Maintaining social connections and relationships, 4) Healthy diet - Mediterranean diet rich in fruits, vegetables, and omega-3 fatty acids, 5) Quality sleep - Getting 7-9 hours of sleep per night, 6) Stress management - Practicing relaxation techniques, 7) Cardiovascular health - Managing blood pressure, cholesterol, and diabetes, 8) Avoiding smoking and excessive alcohol. While these strategies cannot guarantee prevention, they may help delay the onset of symptoms.',
      'category': 'Prevention',
      'tags': ['prevention', 'lifestyle', 'exercise', 'diet', 'health'],
      'isBookmarked': false,
    },
    {
      'id': '8',
      'title': 'Support for Caregivers',
      'content': 'Caring for someone with dementia can be challenging and rewarding. Caregivers need support and resources: 1) Education about dementia and caregiving strategies, 2) Respite care services to provide breaks, 3) Support groups for emotional support, 4) Professional counseling and therapy, 5) Financial planning and legal considerations, 6) Home safety modifications, 7) Communication strategies, 8) Managing behavioral changes, 9) Self-care for the caregiver, 10) Community resources and services. Remember that seeking help is not a sign of weakness but a sign of strength and wisdom.',
      'category': 'Caregiving',
      'tags': ['caregivers', 'support', 'resources', 'family'],
      'isBookmarked': false,
    },
  ];

  String _searchQuery = '';
  final TextEditingController _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  List<Map<String, dynamic>> get _filteredEntries {
    if (_searchQuery.isEmpty) return _entries;
    
    return _entries.where((entry) {
      final searchLower = _searchQuery.toLowerCase();
      return entry['title'].toLowerCase().contains(searchLower) ||
             entry['content'].toLowerCase().contains(searchLower) ||
             entry['category'].toLowerCase().contains(searchLower) ||
             (entry['tags'] as List<String>).any((tag) => tag.toLowerCase().contains(searchLower));
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstants.backgroundColor,
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.dementiaEncyclopedia),
        backgroundColor: AppConstants.cognitiveColor,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          // Search bar
          Container(
            padding: const EdgeInsets.all(AppConstants.spacingM),
            color: AppConstants.cardColor,
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Search encyclopedia...',
                prefixIcon: const Icon(Icons.search),
                suffixIcon: _searchQuery.isNotEmpty
                    ? IconButton(
                        onPressed: () {
                          _searchController.clear();
                          setState(() {
                            _searchQuery = '';
                          });
                        },
                        icon: const Icon(Icons.clear),
                      )
                    : null,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(AppConstants.radiusM),
                ),
              ),
              onChanged: (value) {
                setState(() {
                  _searchQuery = value;
                });
              },
            ),
          ),

          // Entries list
          Expanded(
            child: _filteredEntries.isEmpty
                ? Center(
                    child: Text(
                      _searchQuery.isEmpty ? 'No entries available.' : 'No entries found matching your search.',
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(color: AppConstants.textMuted),
                    ),
                  )
                : ListView.builder(
                    padding: EdgeInsets.only(
                      left: AppConstants.spacingM,
                      right: AppConstants.spacingM,
                      bottom: MediaQuery.of(context).padding.bottom + AppConstants.spacingM,
                    ),
                    itemCount: _filteredEntries.length,
                    itemBuilder: (context, index) {
                      final entry = _filteredEntries[index];
                      return _buildEntryCard(context, entry);
                    },
                  ),
          ),
        ],
      ),
    );
  }

  Widget _buildEntryCard(BuildContext context, Map<String, dynamic> entry) {
    return Card(
      margin: const EdgeInsets.only(bottom: AppConstants.spacingM),
      child: InkWell(
        onTap: () => _showEntryDetail(context, entry),
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
                      color: _getCategoryColor(entry['category']).withOpacity(0.1),
                      borderRadius: BorderRadius.circular(AppConstants.radiusS),
                    ),
                    child: Text(
                      entry['category'],
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: _getCategoryColor(entry['category']),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () => _toggleBookmark(entry),
                    icon: Icon(
                      entry['isBookmarked'] ? Icons.bookmark : Icons.bookmark_border,
                      color: entry['isBookmarked'] ? AppConstants.cognitiveColor : AppConstants.textMuted,
                    ),
                  ),
                ],
              ),
              
              const SizedBox(height: AppConstants.spacingS),
              
              Text(
                entry['title'],
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              
              const SizedBox(height: AppConstants.spacingS),
              
              Text(
                entry['content'],
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: AppConstants.textSecondary,
                  height: 1.5,
                ),
                maxLines: 4,
                overflow: TextOverflow.ellipsis,
              ),
              
              if ((entry['tags'] as List<String>).isNotEmpty) ...[
                const SizedBox(height: AppConstants.spacingM),
                Wrap(
                  spacing: AppConstants.spacingS / 2,
                  runSpacing: AppConstants.spacingS / 2,
                  children: (entry['tags'] as List<String>).map((tag) => Chip(
                    label: Text(tag),
                    backgroundColor: AppConstants.cognitiveColor.withOpacity(0.1),
                    labelStyle: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: AppConstants.cognitiveColor,
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

  void _showEntryDetail(BuildContext context, Map<String, dynamic> entry) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => EntryDetailScreen(entry: entry),
      ),
    );
  }

  void _toggleBookmark(Map<String, dynamic> entry) {
    setState(() {
      final index = _entries.indexWhere((e) => e['id'] == entry['id']);
      if (index != -1) {
        _entries[index]['isBookmarked'] = !_entries[index]['isBookmarked'];
      }
    });
    
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(entry['isBookmarked'] ? AppLocalizations.of(context)!.entryBookmarked : AppLocalizations.of(context)!.bookmarkRemoved),
        backgroundColor: AppConstants.successColor,
      ),
    );
  }

  Color _getCategoryColor(String category) {
    switch (category) {
      case 'General Information':
        return AppConstants.primaryTeal;
      case 'Symptoms':
        return AppConstants.warningColor;
      case 'Risk Factors':
        return AppConstants.infoColor;
      case 'Types':
        return AppConstants.cognitiveColor;
      case 'Diagnosis':
        return AppConstants.healthColor;
      case 'Treatment':
        return AppConstants.successColor;
      case 'Prevention':
        return AppConstants.fitnessColor;
      case 'Caregiving':
        return AppConstants.socialColor;
      default:
        return AppConstants.textSecondary;
    }
  }
}

class EntryDetailScreen extends StatelessWidget {
  final Map<String, dynamic> entry;

  const EntryDetailScreen({super.key, required this.entry});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstants.backgroundColor,
      appBar: AppBar(
        title: Text(entry['title']),
        backgroundColor: AppConstants.cognitiveColor,
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {
              // Toggle bookmark
            },
            icon: Icon(
              entry['isBookmarked'] ? Icons.bookmark : Icons.bookmark_border,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(
          left: AppConstants.spacingM,
          right: AppConstants.spacingM,
          top: AppConstants.spacingM,
          bottom: AppConstants.spacingM + MediaQuery.of(context).padding.bottom,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: AppConstants.spacingS, vertical: 4),
              decoration: BoxDecoration(
                color: AppConstants.cognitiveColor.withOpacity(0.1),
                borderRadius: BorderRadius.circular(AppConstants.radiusS),
              ),
              child: Text(
                entry['category'],
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: AppConstants.cognitiveColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            
            const SizedBox(height: AppConstants.spacingL),
            
            Text(
              entry['title'],
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            
            const SizedBox(height: AppConstants.spacingL),
            
            Text(
              entry['content'],
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                height: 1.6,
              ),
            ),
            
            if ((entry['tags'] as List<String>).isNotEmpty) ...[
              const SizedBox(height: AppConstants.spacingL),
              Text(
                'Related Topics:',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: AppConstants.spacingM),
              Wrap(
                spacing: AppConstants.spacingS / 2,
                runSpacing: AppConstants.spacingS / 2,
                children: (entry['tags'] as List<String>).map((tag) => Chip(
                  label: Text(tag),
                  backgroundColor: AppConstants.cognitiveColor.withOpacity(0.1),
                  labelStyle: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: AppConstants.cognitiveColor,
                  ),
                )).toList(),
              ),
            ],
          ],
        ),
      ),
    );
  }
}