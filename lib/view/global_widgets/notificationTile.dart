import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:food_recipe_app/models/utils/constans/color_constants.dart';

class notificationTile extends StatelessWidget {
  const notificationTile({
    required this.title,
    super.key,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: ColorConstants.greyShade3,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                child: Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: ColorConstants.lightgreen,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(
                    Icons.description,
                    color: ColorConstants.icon2,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: ColorConstants.black,
                      ),
                    ),
                    Text(
                      "Far far away, behind the word ",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        color: ColorConstants.grey,
                      ),
                    ),
                    Text(
                      "mountains, far from the countries.",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        color: ColorConstants.grey,
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                child: CircleAvatar(
                  radius: 4,
                  backgroundColor: ColorConstants.primaryColor,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
