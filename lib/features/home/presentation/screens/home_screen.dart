import 'package:flutter/material.dart';
import '../../../../core/widgets/responsive_wrapper.dart';
import '../widgets/nav_bar.dart';
import '../widgets/main_content.dart';
import '../widgets/recommended_section.dart';
import '../widgets/product_section.dart';
import '../widgets/feature_section.dart';
import '../widgets/collaboration_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Menu',
                  style: TextStyle(color: Colors.white, fontSize: 24)),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Home'),
              onTap: () {
                // Handle navigation
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Services'),
              onTap: () {
                // Handle navigation
                Navigator.pop(context);
              },
            ),
            // Add more items as needed
          ],
        ),
      ),
      body: ResponsiveWrapper(
        builder: (context, isDesktop, isTablet, isMobile) {
          return SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: isMobile
                          ? 16
                          : MediaQuery.of(context).size.width * 0.08,
                      vertical: 20,
                    ),
                    child: Column(
                      children: [
                        NavBar(
                          isMobile: isMobile,
                          isTablet: isTablet,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: isMobile ? 20 : 40,
                          ),
                          child: LayoutBuilder(
                            builder: (context, constraints) => MainContent(
                              isDesktop: isDesktop,
                              isTablet: isTablet,
                              isMobile: isMobile,
                              constraints: constraints,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 60),
                  const RecommendedSection(),
                  const SizedBox(height: 60),
                  const ProductSection(),
                  const SizedBox(height: 60),
                  const CollaborationCard(),
                  const SizedBox(height: 60),
                  const FeatureSection(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
