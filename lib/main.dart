import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'features/home/presentation/providers/icon_movement_provider.dart';
import 'features/home/presentation/screens/home_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => IconMovementProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
