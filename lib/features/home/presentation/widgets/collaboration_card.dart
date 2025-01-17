import 'package:flutter/material.dart';

class CollaborationCard extends StatelessWidget {
  const CollaborationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final horizontalMargin = constraints.maxWidth > 768 ? 150.0 : 16.0;
        final isDesktop = constraints.maxWidth > 768;

        return Container(
          width: double.infinity,
          height: isDesktop ? 350 : 250, // Adjusted desktop height
          padding: EdgeInsets.symmetric(
              vertical: isDesktop ? 60 : 40, horizontal: isDesktop ? 40 : 24),
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
          child: Stack(
            children: [
              // Decorative circles
              Positioned(
                top: 10,
                right: 10,
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: const BoxDecoration(
                    color: Colors.amber,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Positioned(
                bottom: 20,
                right: 20,
                child: Container(
                  width: 30,
                  height: 30,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Positioned(
                bottom: 20,
                left: 20,
                child: Container(
                  width: 30,
                  height: 30,
                  decoration: const BoxDecoration(
                    color: Colors.amber,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Positioned(
                top: 10,
                left: 10,
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: const BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              // Main content
              Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Ready to collaborate?",
                      style: TextStyle(
                        fontSize: isDesktop
                            ? 22
                            : 20, // Slightly reduced desktop font size
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: isDesktop ? 16 : 12),
                    Text(
                      "Start Bidding on Buildings!",
                      style: TextStyle(
                        fontSize:
                            isDesktop ? 36 : 32, // Reduced desktop font size
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: isDesktop ? 24 : 24),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.blue,
                        padding: EdgeInsets.symmetric(
                            horizontal: isDesktop ? 32 : 32,
                            vertical: isDesktop ? 16 : 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: Text(
                        'Get Started',
                        style: TextStyle(
                          fontSize: isDesktop ? 16 : 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
