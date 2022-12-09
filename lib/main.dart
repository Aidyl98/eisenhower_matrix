import 'package:eisenhower_matrix/core/theme/custom_theme.dart';
import 'package:eisenhower_matrix/shared/shared_exporter.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Eisenhower Matrix',
      theme: CustomTheme.lightThemeData,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        child: Column(
          children: const [
            ScreenTopBar(
              title: "Einsehower Matrix",
            ),
          ],
        ),
      ),
    );
  }
}
