import 'package:flutter/material.dart';
import 'package:food_recipe_app/models/utils/constans/color_constants.dart';

class CustomRecipecard extends StatelessWidget {
  const CustomRecipecard(
      {super.key,
      required this.rating,
      required this.description,
      required this.image});
  final String rating;
  final String description;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      height: 223,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(image),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                height: 28,
                decoration: BoxDecoration(
                  color: ColorConstants.lightblack.withOpacity(.3),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.star,
                      size: 15,
                      color: ColorConstants.mainWhite,
                    ),
                    Text(
                      rating,
                      style: TextStyle(
                          color: ColorConstants.mainWhite,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Spacer(),
              CircleAvatar(
                radius: 20,
                backgroundColor: ColorConstants.mainWhite,
                child: Icon(
                  Icons.more_horiz,
                  color: ColorConstants.primaryColor,
                ),
              ),
            ],
          ),
          Spacer(),
          SizedBox(
            width: 163,
            child: Text(
              description,
              style: TextStyle(
                  color: ColorConstants.mainWhite,
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            "12 Ingredients | 40 min",
            style: TextStyle(
                color: ColorConstants.mainWhite,
                fontSize: 12,
                fontWeight: FontWeight.normal),
          ),
        ],
      ),
    );
  }
}
