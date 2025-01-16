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
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildCompanyLogo(),
            _buildCompanyLogo(),
            _buildCompanyLogo(),
            _buildCompanyLogo(),
          ],
        ),
      ],
    );
  }

  Widget _buildCompanyLogo() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: SvgPicture.asset(
        'assets/images/linkedin.svg',
        height: 32,
      ),
    );
  }
}
