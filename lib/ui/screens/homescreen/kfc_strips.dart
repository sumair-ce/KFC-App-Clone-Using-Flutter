import 'package:flutter/material.dart';
import 'package:kfcapp/core/theme/colors.dart';

class KfcStrips extends StatelessWidget {
  final double height; // Declare final to make it immutable
  final double width; // You need to also declare width

  KfcStrips({
    required this.height, // Add this to the constructor
    required this.width, // Add width as well
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      color: AppColors.primarykfc,
    );
  }
}
