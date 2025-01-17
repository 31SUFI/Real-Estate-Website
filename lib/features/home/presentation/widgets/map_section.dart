import 'package:flutter/material.dart';

class MapSection extends StatelessWidget {
  const MapSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 1100) {
          return _buildDesktopLayout(context);
        } else {
          return _buildMobileLayout(context);
        }
      },
    );
  }

  Widget _buildDesktopLayout(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 48),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Left side - Image
          Expanded(
            flex: 1,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: SizedBox(
                height: 400,
                child: Image.asset(
                  'assets/images/maps.jpg',
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          const SizedBox(width: 48),
          // Right side - Content
          Expanded(
            flex: 1,
            child: _buildContent(context),
          ),
        ],
      ),
    );
  }

  Widget _buildMobileLayout(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Image.asset(
                'assets/images/building.jpg',
                fit: BoxFit.contain,
                alignment: Alignment.centerLeft,
              ),
            ),
            const SizedBox(height: 32),
            _buildContent(context),
          ],
        ),
      ),
    );
  }

  Widget _buildContent(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  height: 1.2,
                ),
            children: [
              const TextSpan(text: 'Where they are based\nnow & there '),
              TextSpan(
                text: 'Map',
                style: const TextStyle(color: Colors.blue),
              ),
              const TextSpan(text: '\ndetails.'),
            ],
          ),
        ),
        const SizedBox(height: 24),
        Text(
          'One of the key objectives of modern digital marketing is to raise brand awareness, the extent to which customers and the general public are familiar with and recognize a particular brand.',
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: Colors.grey[600],
                height: 1.5,
              ),
        ),
        const SizedBox(height: 16),
        Text(
          'Enhancing brand awareness is important in digital marketing, and marketing in general.',
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: Colors.grey[600],
                height: 1.5,
              ),
        ),
        const SizedBox(height: 32),
        LayoutBuilder(
          builder: (context, constraints) => Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              _buildStat('13+', 'PARTNER', Colors.amber),
              SizedBox(width: constraints.maxWidth >= 1100 ? 48 : 24),
              _buildStat('87+', 'PROJECT DONE', Colors.blue),
              SizedBox(width: constraints.maxWidth >= 1100 ? 48 : 24),
              _buildStat('135+', 'PENDING PROJECT', Colors.green),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildStat(String number, String label, Color color) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isDesktop = constraints.maxWidth >= 1100;
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              number,
              style: TextStyle(
                fontSize: isDesktop ? 24 : 20,
                fontWeight: FontWeight.bold,
                color: color,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              label,
              style: TextStyle(
                fontSize: isDesktop ? 12 : 10,
                color: Colors.grey[600],
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        );
      },
    );
  }
}
