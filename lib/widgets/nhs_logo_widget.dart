import 'package:flutter/material.dart';
import '../constants/app_constants.dart';

class NHSLogoWidget extends StatelessWidget {
  final double? width;
  final double? height;
  final bool showText;
  final Color? color;

  const NHSLogoWidget({
    super.key,
    this.width,
    this.height,
    this.showText = true,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    final logoColor = color ?? AppConstants.nhsBlue;
    
    return SizedBox(
      width: width,
      height: height,
      child: showText
          ? Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // NHS Logo Text
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: logoColor,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Text(
                    'NHS',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: (height ?? 40) * 0.2,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.5,
                    ),
                  ),
                ),
                const SizedBox(height: 2),
                Flexible(
                  child: Text(
                    'National Health Service',
                    style: TextStyle(
                      color: logoColor,
                      fontSize: (height ?? 40) * 0.12,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            )
          : Center(
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 4,
                ),
                decoration: BoxDecoration(
                  color: logoColor,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Text(
                  'NHS',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: (height ?? 40) * 0.4,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.5,
                  ),
                ),
              ),
            ),
    );
  }
}

class NHSFooterWidget extends StatelessWidget {
  const NHSFooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppConstants.spacingM),
      decoration: BoxDecoration(
        color: AppConstants.nhsBlue,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(AppConstants.radiusM),
          topRight: Radius.circular(AppConstants.radiusM),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const NHSLogoWidget(
            height: 40,
            color: Colors.white,
          ),
          const SizedBox(height: AppConstants.spacingS),
          Text(
            'In partnership with the National Health Service',
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
              color: Colors.white.withOpacity(0.9),
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: AppConstants.spacingS),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildFooterLink(
                context,
                'NHS Website',
                AppConstants.nhsWebsite,
                Icons.language,
              ),
              _buildFooterLink(
                context,
                'NHS 111',
                'tel:111',
                Icons.phone,
              ),
              _buildFooterLink(
                context,
                'Emergency',
                'tel:999',
                Icons.emergency,
              ),
            ],
          ),
          const SizedBox(height: AppConstants.spacingS),
          Text(
            'For medical emergencies, call 999',
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
              color: Colors.white.withOpacity(0.8),
              fontSize: 12,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildFooterLink(
    BuildContext context,
    String text,
    String url,
    IconData icon,
  ) {
    return GestureDetector(
      onTap: () {
        // Handle link tap
        if (url.startsWith('tel:')) {
          // Handle phone calls
        } else if (url.startsWith('http')) {
          // Handle web links
        }
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: 20,
          ),
          const SizedBox(height: 4),
          Text(
            text,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
              color: Colors.white.withOpacity(0.9),
              fontSize: 10,
            ),
          ),
        ],
      ),
    );
  }
}
