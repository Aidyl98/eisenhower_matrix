import 'package:flutter/material.dart';

double statusbarHeight(BuildContext context) =>
    MediaQuery.of(context).padding.top;

double appBarHeight(BuildContext context) => statusbarHeight(context) + 50.0;
