import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../core/constants/app_text_styles.dart';

class MainContent extends StatelessWidget {
  final bool isDesktop;
  final bool isTablet;
  final bool isMobile;
  final BoxConstraints constraints;

  const MainContent({
    super.key,
    required this.isDesktop,
    required this.isTablet,
    required this.isMobile,
    required this.constraints,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 20 : 40,
      ),
      child: Container(
        constraints: BoxConstraints(
          maxWidth: isDesktop ? 800 : 600,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildHeading(),
            SizedBox(height: isMobile ? 20 : 32),
            _buildDescription(),
            SizedBox(height: isMobile ? 30 : 48),
            _buildButtons(),
          ],
        ),
      ),
    );
  }

  Widget _buildHeading() {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Bid Your\nDream ',
            style: _getHeadingStyle(AppColors.textPrimary),
          ),
          TextSpan(
            text: 'Place.',
            style: _getHeadingStyle(AppColors.primary),
          ),
        ],
      ),
    );
  }

  TextStyle _getHeadingStyle(Color color) {
    double fontSize;
    if (isMobile) {
      fontSize = 36;
    } else if (isTablet) {
      fontSize = 52;
    } else {
      fontSize = 72;
    }

    return GoogleFonts.plusJakartaSans(
      fontSize: fontSize,
      fontWeight: FontWeight.bold,
      color: color,
      height: 1.1,
      letterSpacing: -1.0,
    );
  }

  Widget _buildDescription() {
    return Container(
      constraints: BoxConstraints(
        maxWidth: isMobile ? double.infinity : 550,
      ),
      child: Text(
        'Finding Your Dream Home Now Is Quite Difficult, But We Can Help You Make Your Dreams Come True. Come Find Your Dream House With Us!',
        style: AppTextStyles.body.copyWith(
          fontSize: isMobile
              ? 16
              : isTablet
                  ? 18
                  : 22,
          height: 1.6,
          color: AppColors.textPrimary.withOpacity(0.8),
        ),
      ),
    );
  }

  Widget _buildButtons() {
    return Wrap(
      spacing: 16,
      runSpacing: 16,
      children: [
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primary,
            padding: EdgeInsets.symmetric(
              horizontal: isMobile ? 24 : 32,
              vertical: isMobile ? 16 : 20,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: Text(
            'Get Started',
            style: AppTextStyles.button.copyWith(
              fontSize: isMobile ? 14 : 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        TextButton.icon(
          onPressed: () {},
          icon: const Icon(
            Icons.play_circle_outline,
            color: AppColors.primary,
            size: 24,
          ),
          label: Text(
            'Watch Video',
            style: AppTextStyles.body.copyWith(
              color: AppColors.primary,
              fontWeight: FontWeight.w600,
              fontSize: isMobile ? 14 : 16,
            ),
          ),
        ),
      ],
    );
  }

  // ... Rest of the implementation
}
