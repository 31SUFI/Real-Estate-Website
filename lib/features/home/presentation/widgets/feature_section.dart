import 'package:flutter/material.dart';

class FeatureSection extends StatelessWidget {
  const FeatureSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // Determine layout based on width
        if (constraints.maxWidth >= 1100) {
          return _buildDesktopLayout(context);
        } else if (constraints.maxWidth >= 650) {
          return _buildTabletLayout(context);
        } else {
          return _buildMobileLayout(context);
        }
      },
    );
  }

  Widget _buildDesktopLayout(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 150),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 48),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: _buildLeftSection(context),
          ),
          const SizedBox(width: 48),
          Expanded(
            flex: 3,
            child: _buildFeatureGrid(crossAxisCount: 2),
          ),
        ],
      ),
    );
  }

  Widget _buildTabletLayout(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: _buildLeftSection(context),
            ),
            const SizedBox(height: 32),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: SizedBox(
                width:
                    648, // Accommodates 2 cards (300 * 2) + spacing (24) + padding
                child: _buildFeatureGrid(crossAxisCount: 2),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMobileLayout(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: _buildLeftSection(context),
            ),
            const SizedBox(height: 24),
            Center(
              child: SizedBox(
                width: 300, // Single card width
                child: _buildFeatureGrid(crossAxisCount: 1),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLeftSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'We are Ready to\nprotect your Props',
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                fontWeight: FontWeight.bold,
                height: 1.2,
              ),
        ),
        const SizedBox(height: 24),
        const Icon(
          Icons.arrow_downward,
          size: 32,
          color: Colors.blue,
        ),
      ],
    );
  }

  Widget _buildFeatureGrid({required int crossAxisCount}) {
    return GridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: crossAxisCount,
      mainAxisSpacing: 24,
      crossAxisSpacing: 24,
      childAspectRatio: crossAxisCount == 1 ? 1.2 : 1.5,
      children: const [
        SizedBox(
          width: 300,
          child: FeatureCard(
            icon: Icons.security,
            title: 'Advanced Security',
            description: 'State-of-the-art security systems for your property',
          ),
        ),
        SizedBox(
          width: 300,
          child: FeatureCard(
            icon: Icons.monitor,
            title: '24/7 Monitoring',
            description: 'Round-the-clock surveillance and monitoring',
          ),
        ),
        SizedBox(
          width: 300,
          child: FeatureCard(
            icon: Icons.speed,
            title: 'Quick Response',
            description: 'Immediate response to security alerts',
          ),
        ),
        SizedBox(
          width: 300,
          child: FeatureCard(
            icon: Icons.support_agent,
            title: 'Expert Support',
            description: 'Professional security consultants at your service',
          ),
        ),
      ],
    );
  }
}

class FeatureCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const FeatureCard({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, size: 32, color: Colors.blue),
          const SizedBox(height: 12),
          Text(
            title,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 8),
          Text(
            description,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: Colors.grey[600],
                ),
          ),
        ],
      ),
    );
  }
}
