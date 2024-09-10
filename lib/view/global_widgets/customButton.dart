import 'package:flutter/material.dart';
import 'package:food_recipe_app/models/utils/constans/color_constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    required this.text,
    this.onButtonPressed,
    super.key,
  });
  final String text;
  final void Function()? onButtonPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onButtonPressed,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: ColorConstants.primaryColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          text,
          style: TextStyle(
              color: ColorConstants.mainWhite,
              fontSize: 14,
              fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
