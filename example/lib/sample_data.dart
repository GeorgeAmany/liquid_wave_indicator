import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SampleGradients {
  SampleGradients._();

  static const LinearGradient instagram = LinearGradient(
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
    colors: [Color(0xFFE1306C), Colors.white],
  );

  static const LinearGradient facebook = LinearGradient(
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
    colors: [Color(0xFF1877F2), Colors.white],
  );

  static const LinearGradient tiktok = LinearGradient(
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
    colors: [Color(0xFF25F4EE), Colors.white],
  );

  static const LinearGradient snapchat = LinearGradient(
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
    colors: [Color(0xFF8B7D13), Colors.white],
  );
}

class SampleAssets {
  SampleAssets._();

  static const String _icons = 'assets/icons';

  static const String facebookReach = '$_icons/facebook_reach.svg';
  static const String instagramReach = '$_icons/instagram_reach.svg';
  static const String snapchatReach = '$_icons/Snapchat_reach.svg';
  static const String tiktokReach = '$_icons/TikTok_reach.svg';

  static Widget svg(String assetPath) {
    return SvgPicture.asset(
      assetPath,
      fit: BoxFit.contain,
      alignment: Alignment.center,
    );
  }
}
