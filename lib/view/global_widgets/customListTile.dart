import 'package:flutter/material.dart';
import 'package:food_recipe_app/models/utils/constans/color_constants.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    this.haveArrow = false,
  });
  final bool haveArrow;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: ColorConstants.greyShade3),
      child: Row(
        children: [
          Container(
            height: 52,
            width: 52,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: ColorConstants.mainWhite),
            child: Icon(Icons.coffee),
          ),
          SizedBox(
            width: 16,
          ),
          Text(
            "Bread",
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: ColorConstants.black),
          ),
          Spacer(),
          Text(
            "200g",
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.normal,
                color: ColorConstants.grey),
          ),
          SizedBox(
            width: 8,
          ),
          haveArrow
              ? Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Icon(Icons.arrow_forward_outlined,
                      color: ColorConstants.black),
                )
              : SizedBox()
        ],
      ),
    );
  }
}
