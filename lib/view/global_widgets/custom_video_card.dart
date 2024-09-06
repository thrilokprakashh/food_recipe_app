import 'package:flutter/material.dart';
import 'package:food_recipe_app/models/utils/constans/color_constants.dart';

class customVideoCard extends StatelessWidget {
  String rating;
  double width;
  String image;
  String title;
  String description;
  String dp;
  String time;
  customVideoCard({
    this.width = 280,
    required this.rating,
    required this.image,
    required this.title,
    required this.description,
    required this.dp,
    required this.time,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 8, left: 8, right: 8, bottom: 8),
            height: 180,
            width: width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                  image: NetworkImage(image), fit: BoxFit.cover),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                      height: 28,
                      width: 64,
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
                      child: Icon(Icons.bookmark_border),
                    ),
                  ],
                ),
                CircleAvatar(
                  radius: 20,
                  backgroundColor: ColorConstants.lightblack.withOpacity(.3),
                  child: Icon(
                    Icons.play_arrow,
                    color: ColorConstants.mainWhite,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                    height: 22,
                    width: 42,
                    decoration: BoxDecoration(
                      color: ColorConstants.lightblack.withOpacity(.3),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      time,
                      style: TextStyle(
                          color: ColorConstants.mainWhite,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Text(
                title,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: ColorConstants.black),
              ),
              Spacer(),
              Icon(Icons.more_horiz),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            children: [
              CircleAvatar(
                radius: 16,
                backgroundImage: NetworkImage(dp),
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                description,
                style: TextStyle(fontSize: 12, color: ColorConstants.lightGrey),
              ),
            ],
          )
        ],
      ),
    );
  }
}
