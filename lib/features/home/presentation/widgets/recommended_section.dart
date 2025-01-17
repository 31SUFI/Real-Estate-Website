import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RecommendedSection extends StatelessWidget {
  const RecommendedSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            'Recommended by',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.grey,
            ),
          ),
        ),
        const SizedBox(height: 16),
        SizedBox(
          height: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildCompanyLogo('assets/icons/netflix.svg'),
              const SizedBox(width: 24.0),
              _buildCompanyLogo('assets/icons/gpay.svg'),
              const SizedBox(width: 24.0),
              _buildCompanyLogo('assets/icons/amazon.svg'),
              const SizedBox(width: 24.0),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildCompanyLogo(String assetPath) {
    return SvgPicture.asset(
      assetPath,
      height: 80,
    );
  }
}
