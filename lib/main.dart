import 'package:eisenhower_matrix/core/config/config_exporter.dart';
import 'package:eisenhower_matrix/core/theme/custom_theme.dart';
import 'package:eisenhower_matrix/features/home/home_exporter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ),
  );

  /// Init the Dependencies injection of the Controllers of the View.
  Config.initControllers();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Set portrait orientation.
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return GetMaterialApp(
      title: 'Eisenhower Matrix',
      theme: CustomTheme.lightThemeData,
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      getPages: [
        GetPage(
          name: '/home',
          page: () => const HomeScreen(),
        ),
      ],
    );
  }
}
