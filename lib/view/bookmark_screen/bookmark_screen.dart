import 'package:flutter/material.dart';
import 'package:food_recipe_app/dummy_db.dart';
import 'package:food_recipe_app/models/utils/constans/color_constants.dart';
import 'package:food_recipe_app/view/global_widgets/custom_video_card.dart';
import 'package:food_recipe_app/view/recipe_details_screen/recipe_details_page.dart';

class BookmarkScreen extends StatefulWidget {
  const BookmarkScreen({super.key});

  @override
  State<BookmarkScreen> createState() => _BookmarkScreenState();
}

class _BookmarkScreenState extends State<BookmarkScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: ColorConstants.mainWhite,
          appBar: AppBar(
            backgroundColor: ColorConstants.mainWhite,
            title: Text(
              "Saved recipes",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
            ),
            actions: [
              SizedBox(
                width: 10,
              ),
              SizedBox(
                width: 10,
              ),
            ],
            bottom: TabBar(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              dividerHeight: 0,
              indicatorSize: TabBarIndicatorSize.tab,
              labelColor: ColorConstants.mainWhite,
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: ColorConstants.primaryColor,
              ),
              tabs: [
                Tab(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      "Video",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                Tab(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      "Recipe",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ],
            ),
          ),
          body: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              itemBuilder: (context, index) => Column(
                    children: [
                      customVideoCard(
                        onCardTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => RecipeDetailsPage(
                                title: DummyDb.videoCardData[index]["title"],
                              ),
                            ),
                          );
                        },
                        width: double.infinity,
                        rating: DummyDb.videoCardData[index]["rating"],
                        image: DummyDb.videoCardData[index]["image"],
                        time: DummyDb.videoCardData[index]["time"],
                        title: DummyDb.videoCardData[index]["title"],
                        description: DummyDb.videoCardData[index]
                            ["description"],
                        dp: DummyDb.videoCardData[index]["dp"],
                      ),
                    ],
                  ),
              separatorBuilder: (context, index) => SizedBox(height: 16),
              itemCount: DummyDb.videoCardData.length),
        ),
      ),
    );
  }
}
