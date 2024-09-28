import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:food_recipe_app/models/utils/constans/color_constants.dart';

class CustomProfileDataCard extends StatelessWidget {
  const CustomProfileDataCard({
    super.key,
    required this.title,
    required this.value,
  });
  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.normal,
              color: ColorConstants.grey),
        ),
        SizedBox(
          height: 2,
        ),
        Text(
          value,
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: ColorConstants.black),
        ),
      ],
    );
  }
}
