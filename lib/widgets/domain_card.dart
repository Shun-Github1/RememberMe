import 'package:flutter/material.dart';
import '../constants/app_constants.dart';

class DomainCard extends StatelessWidget {
  final String title;
  final String description;
  final IconData? icon;
  final Widget? iconWidget;
  final Color color;
  final VoidCallback onTap;
  final double progress;
  final String? lastActivity;
  final bool isLoading;

  const DomainCard({
    super.key,
    required this.title,
    required this.description,
    this.icon,
    this.iconWidget,
    required this.color,
    required this.onTap,
    this.progress = 0.0,
    this.lastActivity,
    this.isLoading = false,
  }) : assert(icon != null || iconWidget != null, 'Either icon or iconWidget must be provided');

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: InkWell(
        onTap: isLoading ? null : onTap,
        borderRadius: BorderRadius.circular(AppConstants.radiusM),
        child: Padding(
          padding: const EdgeInsets.all(AppConstants.spacingM),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(AppConstants.spacingM),
                    decoration: BoxDecoration(
                      color: color.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(AppConstants.radiusM),
                    ),
                    child: iconWidget ?? Icon(
                      icon!,
                      color: color,
                      size: 24,
                    ),
                  ),
                  
                  const SizedBox(width: AppConstants.spacingM),
                  
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: AppConstants.textPrimary,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          description,
                          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: AppConstants.textSecondary,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  
                  if (isLoading)
                    const SizedBox(
                      width: 20,
                      height: 20,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    )
                  else
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                      color: AppConstants.textMuted,
                    ),
                ],
              ),
              
              if (progress > 0 || lastActivity != null) ...[
                const SizedBox(height: AppConstants.spacingM),
                
                if (progress > 0) ...[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Progress',
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: AppConstants.textSecondary,
                        ),
                      ),
                      Text(
                        '${(progress * 100).round()}%',
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: color,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: AppConstants.spacingS),
                  LinearProgressIndicator(
                    value: progress,
                    backgroundColor: AppConstants.borderColor,
                    valueColor: AlwaysStoppedAnimation<Color>(color),
                    borderRadius: BorderRadius.circular(AppConstants.radiusS),
                  ),
                ],
                
                if (lastActivity != null) ...[
                  if (progress > 0) const SizedBox(height: AppConstants.spacingS),
                  Row(
                    children: [
                      Icon(
                        Icons.schedule,
                        size: 14,
                        color: AppConstants.textMuted,
                      ),
                      const SizedBox(width: 4),
                      Expanded(
                        child: Text(
                          lastActivity!,
                          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: AppConstants.textMuted,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ],
            ],
          ),
        ),
      ),
    );
  }
}

