import 'package:flutter/material.dart';

import 'models/social_reach_item.dart';
import 'social_media_pill.dart';

class SocialMediaReachSection extends StatelessWidget {
  const SocialMediaReachSection({
    super.key,
    this.heading,
    this.title = 'Progress',
    required this.items,
    this.padding = EdgeInsets.zero,
    this.headingSpacing = 8,
    this.titleSpacing = 20,
    this.rowSpacing = 6,
    this.pillStyle = SocialMediaPillStyle.socialReach,
    this.headingStyle,
    this.titleStyle,
    this.crossAxisAlignment = CrossAxisAlignment.start,
  });

  final String? heading;
  final String title;
  final List<SocialReachItem> items;
  final EdgeInsetsGeometry padding;
  final double headingSpacing;
  final double titleSpacing;
  final double rowSpacing;
  final SocialMediaPillStyle pillStyle;
  final TextStyle? headingStyle;
  final TextStyle? titleStyle;
  final CrossAxisAlignment crossAxisAlignment;

  @override
  Widget build(BuildContext context) {
    final visible = items.where((e) => e.reach > 0).toList();
    if (visible.isEmpty) {
      return const SizedBox.shrink();
    }

    final theme = Theme.of(context);

    return Padding(
      padding: padding,
      child: Column(
        crossAxisAlignment: crossAxisAlignment,
        mainAxisSize: MainAxisSize.min,
        children: [
          if (heading != null) ...[
            Text(
              heading!,
              style: headingStyle ??
                  theme.textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.w800,
                    letterSpacing: -0.3,
                  ),
            ),
            SizedBox(height: headingSpacing),
          ],
          Text(
            title,
            style: titleStyle ??
                theme.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w700,
                  color: theme.colorScheme.onSurfaceVariant,
                ),
          ),
          SizedBox(height: titleSpacing),
          Row(
            children: [
              for (var i = 0; i < visible.length; i++) ...[
                if (i > 0) SizedBox(width: rowSpacing),
                Expanded(
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    alignment: Alignment.topCenter,
                    child: SocialMediaPill(
                      progress: (visible[i].reach / 100).clamp(0.0, 1.0),
                      icon: visible[i].icon,
                      gradient: visible[i].gradient,
                      label: visible[i].label,
                      style: pillStyle,
                    ),
                  ),
                ),
              ],
            ],
          ),
        ],
      ),
    );
  }
}
