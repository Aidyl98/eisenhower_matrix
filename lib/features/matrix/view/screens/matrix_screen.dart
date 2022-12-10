import 'package:eisenhower_matrix/shared/shared_exporter.dart';
import 'package:flutter/material.dart';

class MatrixScreen extends StatelessWidget {
  /// Builds the Eisenhower matrix view.
  const MatrixScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Builds a top bar styled as an [AppBar] but with a gradient.
        const ScreenTopBar(
          title: "Einsehower Matrix",
        ),
        // A [GridView] that contain the four quadrants
        // an a partial view of the same.
        GridView.count(
          // Amount of items per row.
          crossAxisCount: 2,
          mainAxisSpacing: 5.0,
          crossAxisSpacing: 9.0,
          childAspectRatio: 0.62,
          // So it can't be scrolled.
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          padding: const EdgeInsets.symmetric(
            horizontal: 10.0,
            vertical: 16.0,
          ),
          children: [
            Card(
              elevation: 5.0,
              child: Container(
                child: const Text("Cuadrante"),
              ),
            ),
            Card(
              elevation: 5.0,
              child: Container(
                child: const Text("Cuadrante"),
              ),
            ),
            Card(
              elevation: 5.0,
              child: Container(
                child: const Text("Cuadrante"),
              ),
            ),
            Card(
              elevation: 5.0,
              child: Container(
                child: const Text("Cuadrante"),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
