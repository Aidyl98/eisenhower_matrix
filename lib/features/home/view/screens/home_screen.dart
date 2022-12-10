import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:eisenhower_matrix/core/core_exporter.dart';
import 'package:eisenhower_matrix/features/home/controller/home_controller.dart';
import 'package:eisenhower_matrix/features/matrix/matrix_exporter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  /// Builds the home screen that contains the other views. Have a permanet
  /// background gradient and the botton navigation bar.
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomeController>();

    /// The view of every tab/quadrant.
    List<Widget> quadrantTabs = [
      Container(),
      Container(),
      const MatrixScreen(),
      Container(),
      Container(),
    ];

    return Scaffold(
      body: SafeArea(
        // The top is false so the status bar get the color of the first child.
        top: false,
        child: Container(
          // The background color is a gradient.
          decoration: const BoxDecoration(
            gradient: ColorsTheme.backgrounGradient,
          ),
          // The view of every tab/quadrant acording to the press index.
          child: GetBuilder<HomeController>(
            builder: (_) => quadrantTabs[controller.quadrantIndex],
          ),
        ),
      ),
      // The botton navigation bar that change between quadrants.
      bottomNavigationBar: ConvexAppBar(
        gradient: ColorsTheme.appBarGradient,
        style: TabStyle.custom,
        // The initial screen is the matrix.
        initialActiveIndex: controller.quadrantIndex,
        items: const [
          // Quadrant 1: Important + Urgent
          TabItem(
            icon: Icons.filter_1_rounded,
          ),
          // Quadrant 2: Important + No Urgent
          TabItem(
            icon: Icons.filter_2_rounded,
          ),
          // The Eisenhower Matrix.
          TabItem(
            icon: Icons.filter_none_rounded,
          ),
          // Quadrant 3: No Important + Urgent
          TabItem(
            icon: Icons.filter_3_rounded,
          ),
          // Quadrant 4: No Important + No Urgent
          TabItem(
            icon: Icons.filter_4_rounded,
          ),
        ],
        onTap: (int index) => controller.setQuadrantIndex(index),
      ),
    );
  }
}
