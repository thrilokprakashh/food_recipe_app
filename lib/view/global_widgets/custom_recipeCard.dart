import 'package:flutter/material.dart';
import 'package:food_recipe_app/models/utils/constans/color_constants.dart';

class CustomRecipecard extends StatefulWidget {
  const CustomRecipecard({super.key});

  @override
  State<CustomRecipecard> createState() => _CustomRecipecardState();
}

class _CustomRecipecardState extends State<CustomRecipecard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      height: 223,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(
              "https://images.pexels.com/photos/2802527/pexels-photo-2802527.jpeg?auto=compress&cs=tinysrgb&w=1200"),
        ),
      ),
      child: Column(
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
                      "rating",
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
                child: Icon(Icons.bookmark_border),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
