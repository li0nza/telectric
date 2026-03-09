import 'package:flutter/material.dart';
import 'package:telectric/ui/map_screen.dart';

class TelectricApp extends StatelessWidget {
  const TelectricApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Telectric',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: Colors.green,
        brightness: Brightness.light,
        useMaterial3: true,
      ),
      home: const MapScreen(),
    );
  }
}
