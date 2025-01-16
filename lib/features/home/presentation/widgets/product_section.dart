import 'package:flutter/material.dart';

class ProductSection extends StatelessWidget {
  const ProductSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // Calculate card width based on screen size
        final screenWidth = constraints.maxWidth;
        final cardWidth = _getCardWidth(screenWidth);
        final padding = _getPadding(screenWidth);

        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: padding),
              child: const Text(
                'We Provide Variety of Insurance',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 32,
                  height: 1.2,
                  fontWeight: FontWeight.w900,
                  color: Colors.black,
                  letterSpacing: -0.5,
                ),
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: padding),
              child: const Text(
                'Here are the steps in starting to choose an insurance product',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
            ),
            const SizedBox(height: 24),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: padding),
              child: Wrap(
                spacing: 16, // Horizontal spacing between cards
                runSpacing: 24, // Vertical spacing between rows
                alignment: WrapAlignment.center,
                children: [
                  _buildImageCard('assets/images/building.jpg',
                      'Personal House', cardWidth),
                  _buildImageCard('assets/images/building2.jpg',
                      'Residential Building', cardWidth),
                  _buildImageCard('assets/images/building.jpg',
                      'Industrial Building', cardWidth),
                ],
              ),
            ),
          ],
        );
      },
    );
  }

  // Helper method to calculate card width based on screen size
  double _getCardWidth(double screenWidth) {
    if (screenWidth > 1200) {
      return 300; // Large screens - larger cards
    } else if (screenWidth > 800) {
      return 250; // Medium screens
    } else if (screenWidth > 600) {
      return screenWidth * 0.4; // Small tablets
    } else {
      return screenWidth * 0.8; // Mobile devices
    }
  }

  // Helper method to calculate padding based on screen size
  double _getPadding(double screenWidth) {
    if (screenWidth > 1200) {
      return 32;
    } else if (screenWidth > 800) {
      return 24;
    } else {
      return 16;
    }
  }

  Widget _buildImageCard(String imagePath, String title, double cardWidth) {
    return SizedBox(
      width: cardWidth,
      child: Card(
        elevation: 0,
        color: Colors.transparent,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                imagePath,
                height: cardWidth * 0.7, // Maintain aspect ratio
                width: cardWidth,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                // Add your navigation logic here
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Learn More'),
                  SizedBox(width: 4),
                  Icon(Icons.arrow_outward, size: 16),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
