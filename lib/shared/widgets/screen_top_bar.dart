import 'package:flutter/material.dart';
import 'package:eisenhower_matrix/core/core_exporter.dart';

class ScreenTopBar extends StatelessWidget {
  /// The text to shows as title of the top bar.
  final String title;

  /// The optional list of secondary buttons to show at the right of the title.
  final Widget? secondaryButtons;

  /// Builds a top bar styled as an [AppBar] but with a gradient.
  ///
  /// Have an optional set of secondary buttons.
  const ScreenTopBar({
    Key? key,
    required this.title,
    this.secondaryButtons,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: statusbarHeight(context), left: 12.0),
      height: appBarHeight(context),
      decoration: const BoxDecoration(
        gradient: ColorsTheme.appBarGradient,
        boxShadow: [ColorsTheme.blackElevation],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.headline5,
            textHeightBehavior: const TextHeightBehavior(
              leadingDistribution: TextLeadingDistribution.even,
            ),
          ),
          if (secondaryButtons != null) secondaryButtons!,
        ],
      ),
    );
  }
}
