import 'package:flutter/material.dart';
import 'package:food_recipe_app/models/utils/constans/color_constants.dart';

class customVideoCard extends StatelessWidget {
  const customVideoCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 8, left: 8, right: 8, bottom: 8),
      height: 180,
      width: 280,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(
            image: NetworkImage(
                "https://images.pexels.com/photos/1640777/pexels-photo-1640777.jpeg?auto=compress&cs=tinysrgb&w=1200"),
            fit: BoxFit.cover),
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
                      " 4,5",
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
                "15:10",
                style: TextStyle(
                    color: ColorConstants.mainWhite,
                    fontSize: 12,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
