import 'package:flutter/material.dart';
import 'package:food_recipe_app/models/utils/constans/color_constants.dart';

class customTextFiled extends StatelessWidget {
  const customTextFiled({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 5,
          child: TextFormField(
            decoration: InputDecoration(
              hintText: "Item name",
              hintStyle: TextStyle(fontSize: 14, color: ColorConstants.grey),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: ColorConstants.grey),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 12,
        ),
        Expanded(
          flex: 3,
          child: TextFormField(
            decoration: InputDecoration(
              hintText: "Quantity",
              hintStyle: TextStyle(fontSize: 14, color: ColorConstants.grey),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: ColorConstants.grey),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 12,
        ),
        Icon(Icons.remove)
      ],
    );
  }
}
