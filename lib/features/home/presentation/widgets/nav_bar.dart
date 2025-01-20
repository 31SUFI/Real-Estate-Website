import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_text_styles.dart';

class NavBar extends StatelessWidget {
  final bool isMobile;
  final bool isTablet;

  const NavBar({super.key, required this.isMobile, required this.isTablet});

  @override
  Widget build(BuildContext context) {
    return isMobile ? _buildMobileNav(context) : _buildDesktopNav();
  }

  Widget _buildMobileNav(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildLogo(),
        Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {},
            );
          },
        ),
      ],
    );
  }

  Widget _buildDesktopNav() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildLogo(),
        Row(
          children: [
            _NavItem('Home', isSelected: true),
            _NavItem('Services'),
            _NavItem('Properties'),
            _NavItem('About'),
            const SizedBox(width: 20),
            _ContactButton(),
          ],
        ),
      ],
    );
  }

  Widget _buildLogo() {
    return Row(
      children: [
        const Icon(Icons.circle, color: AppColors.primary, size: 24),
        const SizedBox(width: 8),
        Text('Bauction.Com', style: AppTextStyles.heading1),
      ],
    );
  }
}

class _NavItem extends StatelessWidget {
  final String title;
  final bool isSelected;

  const _NavItem(this.title, {this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Text(
        title,
        style: GoogleFonts.plusJakartaSans(
          color: isSelected ? AppColors.primary : AppColors.textPrimary,
          fontWeight: isSelected ? FontWeight.w600 : FontWeight.w500,
        ),
      ),
    );
  }
}

class _ContactButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 12,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Text('Contact Us', style: AppTextStyles.button),
    );
  }
}
