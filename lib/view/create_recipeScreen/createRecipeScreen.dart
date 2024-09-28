import 'package:flutter/material.dart';
import 'package:food_recipe_app/models/utils/constans/color_constants.dart';
import 'package:food_recipe_app/view/create_recipeScreen/widgets/custom_textFileds.dart';
import 'package:food_recipe_app/view/global_widgets/customButton.dart';
import 'package:food_recipe_app/view/global_widgets/customListTile.dart';

class Createrecipescreen extends StatefulWidget {
  const Createrecipescreen({super.key});

  @override
  State<Createrecipescreen> createState() => _CreaterecipescreenState();
}

class _CreaterecipescreenState extends State<Createrecipescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Icon(
            Icons.more_horiz,
            size: 24,
            color: ColorConstants.black,
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Create recipe",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 24,
              ),
              _buildRecipevideoCard(),
              SizedBox(height: 16),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Name",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: ColorConstants.primaryColor),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              CustomListTile(
                haveArrow: true,
              ),
              SizedBox(
                height: 16,
              ),
              CustomListTile(
                haveArrow: true,
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                "Ingredients",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: ColorConstants.black,
                    fontSize: 24),
              ),
              SizedBox(
                height: 16,
              ),
              customTextFiled(),
              SizedBox(
                height: 16,
              ),
              customTextFiled(),
              SizedBox(
                height: 16,
              ),
              customTextFiled(),
              SizedBox(
                height: 16,
              ),
              Text(
                "+ Add new Ingredients",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: ColorConstants.black,
                    fontSize: 16),
              ),
              SizedBox(
                height: 20,
              ),
              CustomButton(
                text: "Save my recipes",
                onButtonPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container _buildRecipevideoCard() {
    return Container(
      padding: EdgeInsets.all(8),
      height: 200,
      decoration: BoxDecoration(
        color: ColorConstants.black,
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: NetworkImage(
              "https://images.pexels.com/photos/1640777/pexels-photo-1640777.jpeg?auto=compress&cs=tinysrgb&w=1200"),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CircleAvatar(
                backgroundColor: ColorConstants.mainWhite,
                radius: 16,
                child: Icon(
                  Icons.edit,
                  color: ColorConstants.primaryColor,
                  size: 20,
                ),
              ),
            ],
          ),
          Center(
            child: CircleAvatar(
              backgroundColor: ColorConstants.lightGrey,
              radius: 24,
              child: Icon(
                Icons.play_arrow,
                color: ColorConstants.mainWhite,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
