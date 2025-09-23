import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../constants/app_constants.dart';
import '../../l10n/app_localizations.dart';

class ForumScreen extends StatefulWidget {
  const ForumScreen({super.key});

  @override
  State<ForumScreen> createState() => _ForumScreenState();
}

class _ForumScreenState extends State<ForumScreen> {
  final List<Map<String, dynamic>> _posts = [
    {
      'id': '1',
      'title': 'Tips for staying socially active',
      'content': 'I\'ve found that joining local groups and maintaining regular contact with friends has really helped me stay engaged. What activities do you enjoy most?',
      'author': 'Sarah M.',
      'authorId': 'user1',
      'createdAt': DateTime.now().subtract(const Duration(hours: 2)),
      'category': 'Social Engagement',
      'tags': ['social', 'activities', 'engagement'],
      'likes': 12,
      'replies': 5,
      'isLiked': false,
    },
    {
      'id': '2',
      'title': 'Best brain training apps',
      'content': 'I\'ve been using several cognitive training apps and wanted to share my experience. Lumosity and Peak have been particularly helpful for memory exercises.',
      'author': 'John D.',
      'authorId': 'user2',
      'createdAt': DateTime.now().subtract(const Duration(hours: 5)),
      'category': 'Cognitive Training',
      'tags': ['apps', 'brain training', 'memory'],
      'likes': 8,
      'replies': 3,
      'isLiked': true,
    },
    {
      'id': '3',
      'title': 'Mediterranean diet recipes',
      'content': 'Looking for simple Mediterranean diet recipes that are easy to prepare. Any favorites you\'d like to share?',
      'author': 'Maria L.',
      'authorId': 'user3',
      'createdAt': DateTime.now().subtract(const Duration(days: 1)),
      'category': 'Nutrition',
      'tags': ['diet', 'recipes', 'mediterranean'],
      'likes': 15,
      'replies': 7,
      'isLiked': false,
    },
    {
      'id': '4',
      'title': 'Walking groups in Cambridge',
      'content': 'Are there any walking groups in the Cambridge area that meet regularly? I\'d love to join one for both exercise and social interaction.',
      'author': 'Robert K.',
      'authorId': 'user4',
      'createdAt': DateTime.now().subtract(const Duration(days: 2)),
      'category': 'Physical Activity',
      'tags': ['walking', 'groups', 'cambridge'],
      'likes': 6,
      'replies': 4,
      'isLiked': false,
    },
    {
      'id': '5',
      'title': 'Managing stress and anxiety',
      'content': 'I\'ve been feeling more anxious lately and wondering if others have strategies for managing stress that have worked for them.',
      'author': 'Emma T.',
      'authorId': 'user5',
      'createdAt': DateTime.now().subtract(const Duration(days: 3)),
      'category': 'Wellbeing',
      'tags': ['stress', 'anxiety', 'mental health'],
      'likes': 10,
      'replies': 8,
      'isLiked': false,
    },
  ];

  String _searchQuery = '';
  final TextEditingController _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  List<Map<String, dynamic>> get _filteredPosts {
    if (_searchQuery.isEmpty) return _posts;
    
    return _posts.where((post) {
      final searchLower = _searchQuery.toLowerCase();
      return post['title'].toLowerCase().contains(searchLower) ||
             post['content'].toLowerCase().contains(searchLower) ||
             (post['tags'] as List<String>).any((tag) => tag.toLowerCase().contains(searchLower));
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstants.backgroundColor,
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.communityForum),
        backgroundColor: AppConstants.socialColor,
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
                hintText: 'Search posts...',
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

          // Posts list
          Expanded(
            child: _filteredPosts.isEmpty
                ? Center(
                    child: Text(
                      _searchQuery.isEmpty ? 'No posts available.' : 'No posts found matching your search.',
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(color: AppConstants.textMuted),
                    ),
                  )
                : ListView.builder(
                    padding: EdgeInsets.only(
                      left: AppConstants.spacingM,
                      right: AppConstants.spacingM,
                      bottom: MediaQuery.of(context).padding.bottom + 80, // Extra space for FAB
                    ),
                    itemCount: _filteredPosts.length,
                    itemBuilder: (context, index) {
                      final post = _filteredPosts[index];
                      return _buildPostCard(context, post);
                    },
                  ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _createNewPost,
        backgroundColor: AppConstants.socialColor,
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }

  Widget _buildPostCard(BuildContext context, Map<String, dynamic> post) {
    return Card(
      margin: const EdgeInsets.only(bottom: AppConstants.spacingM),
      child: InkWell(
        onTap: () => _showPostDetail(context, post),
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
                      color: _getCategoryColor(post['category']).withOpacity(0.1),
                      borderRadius: BorderRadius.circular(AppConstants.radiusS),
                    ),
                    child: Text(
                      post['category'],
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: _getCategoryColor(post['category']),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const Spacer(),
                  Text(
                    DateFormat('MMM d').format(post['createdAt']),
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: AppConstants.textMuted,
                    ),
                  ),
                ],
              ),
              
              const SizedBox(height: AppConstants.spacingS),
              
              Text(
                post['title'],
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              
              const SizedBox(height: AppConstants.spacingS),
              
              Text(
                post['content'],
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: AppConstants.textSecondary,
                ),
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
              
              if ((post['tags'] as List<String>).isNotEmpty) ...[
                const SizedBox(height: AppConstants.spacingS),
                Wrap(
                  spacing: AppConstants.spacingS / 2,
                  runSpacing: AppConstants.spacingS / 2,
                  children: (post['tags'] as List<String>).map((tag) => Chip(
                    label: Text(tag),
                    backgroundColor: AppConstants.socialColor.withOpacity(0.1),
                    labelStyle: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: AppConstants.socialColor,
                    ),
                  )).toList(),
                ),
              ],
              
              const SizedBox(height: AppConstants.spacingM),
              
              Row(
                children: [
                  Icon(Icons.person, size: 16, color: AppConstants.textMuted),
                  const SizedBox(width: 4),
                  Text(
                    post['author'],
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: AppConstants.textMuted,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () => _toggleLike(post),
                    icon: Icon(
                      post['isLiked'] ? Icons.favorite : Icons.favorite_border,
                      color: post['isLiked'] ? AppConstants.errorColor : AppConstants.textMuted,
                      size: 20,
                    ),
                  ),
                  Text(
                    '${post['likes']}',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: AppConstants.textMuted,
                    ),
                  ),
                  const SizedBox(width: AppConstants.spacingM),
                  Icon(Icons.chat_bubble_outline, size: 16, color: AppConstants.textMuted),
                  const SizedBox(width: 4),
                  Text(
                    '${post['replies']}',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: AppConstants.textMuted,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showPostDetail(BuildContext context, Map<String, dynamic> post) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => PostDetailScreen(post: post),
      ),
    );
  }

  void _toggleLike(Map<String, dynamic> post) {
    setState(() {
      final index = _posts.indexWhere((p) => p['id'] == post['id']);
      if (index != -1) {
        _posts[index]['isLiked'] = !_posts[index]['isLiked'];
        _posts[index]['likes'] = _posts[index]['isLiked'] 
            ? _posts[index]['likes'] + 1 
            : _posts[index]['likes'] - 1;
      }
    });
  }

  void _createNewPost() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(AppLocalizations.of(context)!.createNewPost),
        content: Text(AppLocalizations.of(context)!.postCreationFeatureComingSoon),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(AppLocalizations.of(context)!.ok),
          ),
        ],
      ),
    );
  }

  Color _getCategoryColor(String category) {
    switch (category) {
      case 'Social Engagement':
        return AppConstants.socialColor;
      case 'Cognitive Training':
        return AppConstants.cognitiveColor;
      case 'Nutrition':
        return AppConstants.nutritionColor;
      case 'Physical Activity':
        return AppConstants.fitnessColor;
      case 'Wellbeing':
        return AppConstants.healthColor;
      default:
        return AppConstants.textSecondary;
    }
  }
}

class PostDetailScreen extends StatefulWidget {
  final Map<String, dynamic> post;

  const PostDetailScreen({super.key, required this.post});

  @override
  State<PostDetailScreen> createState() => _PostDetailScreenState();
}

class _PostDetailScreenState extends State<PostDetailScreen> {
  final TextEditingController _replyController = TextEditingController();
  final List<Map<String, dynamic>> _replies = [
    {
      'id': '1',
      'postId': '1',
      'author': 'Alice W.',
      'authorId': 'user6',
      'content': 'Great tips! I\'ve also found that volunteering at the local library has been wonderful for staying social.',
      'createdAt': DateTime.now().subtract(const Duration(hours: 1)),
      'likes': 3,
      'isLiked': false,
    },
    {
      'id': '2',
      'postId': '1',
      'author': 'Tom R.',
      'authorId': 'user7',
      'content': 'Thank you for sharing this. I\'m going to try some of these suggestions.',
      'createdAt': DateTime.now().subtract(const Duration(hours: 3)),
      'likes': 1,
      'isLiked': false,
    },
  ];

  @override
  void dispose() {
    _replyController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstants.backgroundColor,
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.postDetails),
        backgroundColor: AppConstants.socialColor,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.only(
                left: AppConstants.spacingM,
                right: AppConstants.spacingM,
                top: AppConstants.spacingM,
                bottom: AppConstants.spacingM + MediaQuery.of(context).padding.bottom,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Original post
                  Card(
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
                                  color: AppConstants.socialColor.withOpacity(0.1),
                                  borderRadius: BorderRadius.circular(AppConstants.radiusS),
                                ),
                                child: Text(
                                  widget.post['category'],
                                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                    color: AppConstants.socialColor,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              const Spacer(),
                              Text(
                                DateFormat('MMM d, yyyy').format(widget.post['createdAt']),
                                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                  color: AppConstants.textMuted,
                                ),
                              ),
                            ],
                          ),
                          
                          const SizedBox(height: AppConstants.spacingS),
                          
                          Text(
                            widget.post['title'],
                            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          
                          const SizedBox(height: AppConstants.spacingM),
                          
                          Text(
                            widget.post['content'],
                            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              height: 1.5,
                            ),
                          ),
                          
                          if ((widget.post['tags'] as List<String>).isNotEmpty) ...[
                            const SizedBox(height: AppConstants.spacingM),
                            Wrap(
                              spacing: AppConstants.spacingS / 2,
                              runSpacing: AppConstants.spacingS / 2,
                              children: (widget.post['tags'] as List<String>).map((tag) => Chip(
                                label: Text(tag),
                                backgroundColor: AppConstants.socialColor.withOpacity(0.1),
                                labelStyle: Theme.of(context).textTheme.bodySmall?.copyWith(
                                  color: AppConstants.socialColor,
                                ),
                              )).toList(),
                            ),
                          ],
                          
                          const SizedBox(height: AppConstants.spacingM),
                          
                          Row(
                            children: [
                              Icon(Icons.person, size: 16, color: AppConstants.textMuted),
                              const SizedBox(width: 4),
                              Text(
                                widget.post['author'],
                                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const Spacer(),
                              IconButton(
                                onPressed: () {
                                  // Toggle like
                                },
                                icon: Icon(
                                  widget.post['isLiked'] ? Icons.favorite : Icons.favorite_border,
                                  color: widget.post['isLiked'] ? AppConstants.errorColor : AppConstants.textMuted,
                                ),
                              ),
                              Text('${widget.post['likes']} ${AppLocalizations.of(context)!.likes}'),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  
                  const SizedBox(height: AppConstants.spacingL),
                  
                  // Replies
                  Text(
                    'Replies (${_replies.length})',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  
                  const SizedBox(height: AppConstants.spacingM),
                  
                  ..._replies.map((reply) => Card(
                    margin: const EdgeInsets.only(bottom: AppConstants.spacingM),
                    child: Padding(
                      padding: const EdgeInsets.all(AppConstants.spacingM),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                reply['author'],
                                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const Spacer(),
                              Text(
                                DateFormat('MMM d').format(reply['createdAt']),
                                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                  color: AppConstants.textMuted,
                                ),
                              ),
                            ],
                          ),
                          
                          const SizedBox(height: AppConstants.spacingS),
                          
                          Text(
                            reply['content'],
                            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              height: 1.4,
                            ),
                          ),
                          
                          const SizedBox(height: AppConstants.spacingS),
                          
                          Row(
                            children: [
                              IconButton(
                                onPressed: () {
                                  // Toggle like
                                },
                                icon: Icon(
                                  reply['isLiked'] ? Icons.favorite : Icons.favorite_border,
                                  color: reply['isLiked'] ? AppConstants.errorColor : AppConstants.textMuted,
                                  size: 16,
                                ),
                              ),
                              Text(
                                '${reply['likes']}',
                                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                  color: AppConstants.textMuted,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )),
                ],
              ),
            ),
          ),
          
          // Reply input
          Container(
            padding: const EdgeInsets.all(AppConstants.spacingM),
            decoration: const BoxDecoration(
              color: AppConstants.cardColor,
              border: Border(top: BorderSide(color: AppConstants.borderColor)),
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _replyController,
                    decoration: const InputDecoration(
                      hintText: 'Write a reply...',
                      border: OutlineInputBorder(),
                    ),
                    maxLines: 2,
                  ),
                ),
                const SizedBox(width: AppConstants.spacingM),
                ElevatedButton(
                  onPressed: _replyController.text.trim().isNotEmpty ? _postReply : null,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppConstants.socialColor,
                    foregroundColor: Colors.white,
                  ),
                  child: Text(AppLocalizations.of(context)!.reply),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _postReply() {
    if (_replyController.text.trim().isEmpty) return;
    
    final newReply = {
      'id': 'reply_${DateTime.now().millisecondsSinceEpoch}',
      'postId': widget.post['id'],
      'author': 'Current User',
      'authorId': 'current_user',
      'content': _replyController.text.trim(),
      'createdAt': DateTime.now(),
      'likes': 0,
      'isLiked': false,
    };
    
    setState(() {
      _replies.add(newReply);
      _replyController.clear();
    });
    
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(AppLocalizations.of(context)!.replyPostedSuccessfully),
        backgroundColor: AppConstants.successColor,
      ),
    );
  }
}