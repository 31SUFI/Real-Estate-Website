import 'package:flutter/material.dart';

class CollaborationCard extends StatelessWidget {
  const CollaborationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isDesktop = constraints.maxWidth > 768;
        final horizontalMargin = isDesktop ? 150.0 : 16.0;
        final cardHeight = isDesktop ? 350.0 : 300.0;
        final verticalPadding = isDesktop ? 60.0 : 40.0;

        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Stack(
            children: [
              Container(
                width: isDesktop
                    ? constraints.maxWidth - (horizontalMargin * 2)
                    : constraints.maxWidth * 0.9,
                height: cardHeight,
                padding: EdgeInsets.symmetric(
                    vertical: verticalPadding, horizontal: 24.0),
                margin: EdgeInsets.symmetric(
                    horizontal: horizontalMargin, vertical: 20.0),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 8,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Ready to collaborate?",
                        style: TextStyle(
                          fontSize: isDesktop ? 22 : 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: isDesktop ? 16 : 12),
                      Text(
                        "Start Bidding on Buildings!",
                        style: TextStyle(
                          fontSize: isDesktop ? 36 : 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: isDesktop ? 24 : 20),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.blue,
                          padding: EdgeInsets.symmetric(
                            horizontal: isDesktop ? 32 : 24,
                            vertical: isDesktop ? 16 : 12,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: Text(
                          'Get Started',
                          style: TextStyle(
                            fontSize: isDesktop ? 16 : 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // Decorative circles
              Positioned(
                right: horizontalMargin + 40,
                top: 20,
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.amber, // Solid amber color
                  ),
                ),
              ),
              // Positioned(
              //   right: horizontalMargin + 80,
              //   top: 100,
              //   child: Container(
              //     width: 40,
              //     height: 40,
              //     decoration: const BoxDecoration(
              //       shape: BoxShape.circle,
              //       color: Colors.white, // Solid white color
              //     ),
              //   ),
              // ),
              Positioned(
                right: horizontalMargin + 30,
                bottom: 40,
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.green, // Solid green color
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
