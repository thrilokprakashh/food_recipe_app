import 'package:flutter/material.dart';
import 'package:food_recipe_app/models/utils/constans/color_constants.dart';

class popularCategoryCard extends StatelessWidget {
  const popularCategoryCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 231,
          width: 150,
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            height: 176,
            decoration: BoxDecoration(
              color: ColorConstants.greyShade3,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 25,
                ),
                Text(
                  "Pepper sweetorn \n          ramen",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                ),
                Column(
                  children: [
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        "Time",
                        style: TextStyle(
                            fontSize: 12, color: ColorConstants.lightGrey),
                      ),
                    ),
                    Row(
                      children: [
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            "10 mins",
                            style: TextStyle(
                                fontSize: 12,
                                color: ColorConstants.black,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Spacer(),
                        CircleAvatar(
                          radius: 12,
                          backgroundColor: ColorConstants.mainWhite,
                          child: Icon(
                            Icons.bookmark_border,
                            size: 16,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          child: CircleAvatar(
            radius: 55,
            backgroundImage: NetworkImage(
                "https://images.pexels.com/photos/699953/pexels-photo-699953.jpeg?auto=compress&cs=tinysrgb&w=1200"),
          ),
        ),
      ],
    );
  }
}
