import 'package:flutter/material.dart';
import 'package:food_recipe_app/models/utils/constans/color_constants.dart';
import 'package:food_recipe_app/view/global_widgets/customButton.dart';

class RecipeDetailsPage extends StatelessWidget {
  RecipeDetailsPage(
      {super.key,
      required this.title,
      required this.image,
      required this.rating,
      required this.dp,
      required this.userName});
  String title;
  String image;
  String rating;
  String dp;
  String userName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_horiz,
              size: 24,
            ),
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Column(
          children: [
            _buildTitleSection(), // first section
          ],
        ),
      ),
    );
  }

  Column _buildTitleSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: 24,
        ),
        Container(
          height: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: NetworkImage(image),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: CircleAvatar(
              backgroundColor: ColorConstants.lightblack.withOpacity(.3),
              child: Icon(
                Icons.play_arrow,
                color: ColorConstants.mainWhite,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Row(
          children: [
            Icon(
              Icons.star,
              color: ColorConstants.icons,
            ),
            SizedBox(
              width: 4,
            ),
            Text(
              rating,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              width: 7,
            ),
            Text(
              "(300 Reviews)",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  color: ColorConstants.grey),
            ),
          ],
        ),
        SizedBox(
          height: 16,
        ),
        Row(
          children: [
            CircleAvatar(
              radius: 21,
              backgroundImage: NetworkImage(dp),
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  userName,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      color: ColorConstants.primaryColor,
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Text(
                      "Bali, Indonesia",
                      style:
                          TextStyle(fontSize: 14, color: ColorConstants.grey),
                    ),
                  ],
                ),
              ],
            ),
            Spacer(),
            CustomButton(
              text: "Follow",
              onButtonPressed: () {},
            ),
          ],
        ),
      ],
    );
  }
}
