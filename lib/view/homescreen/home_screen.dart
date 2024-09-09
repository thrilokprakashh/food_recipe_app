import 'package:flutter/material.dart';
import 'package:food_recipe_app/dummy_db.dart';
import 'package:food_recipe_app/models/utils/constans/color_constants.dart';
import 'package:food_recipe_app/view/global_widgets/custom_video_card.dart';
import 'package:food_recipe_app/view/homescreen/widgets/popular_category_card.dart';
import 'package:food_recipe_app/view/recipe_details_screen/recipe_details_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainWhite,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              textSection(), // #section 1

              _titleSection(), //# section 2 - trending now
              _PopularCategorySection()
            ],
          ),
        ),
      ),
    );
  }

  Widget _PopularCategorySection() {
    return DefaultTabController(
      length: 5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 24, horizontal: 20),
            child: Text(
              "Popular category",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: ColorConstants.black),
            ),
          ),
          TabBar(
            padding: EdgeInsets.symmetric(horizontal: 20),
            dividerHeight: 0,
            isScrollable: true,
            tabAlignment: TabAlignment.start,
            indicatorSize: TabBarIndicatorSize.tab,
            labelColor: ColorConstants.mainWhite,
            unselectedLabelColor: ColorConstants.primaryColor,
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: ColorConstants.primaryColor,
            ),
            tabs: [
              Tab(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Text("Salad"),
                ),
              ),
              Tab(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Text("Breakfast"),
                ),
              ),
              Tab(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Text("Appetizer"),
                ),
              ),
              Tab(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Text("Noodle"),
                ),
              ),
              Tab(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Text("Lunch"),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 231,
            child: ListView.separated(
                padding: EdgeInsets.symmetric(horizontal: 20),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => popularCategoryCard(
                      image: DummyDb.popularCategoryDataList[index]['image'],
                      title: DummyDb.popularCategoryDataList[index]['title'],
                      time: DummyDb.popularCategoryDataList[index]['time'],
                    ),
                separatorBuilder: (context, index) => SizedBox(
                      width: 16,
                    ),
                itemCount: DummyDb.popularCategoryDataList.length),
          )
        ],
      ),
    );
  }

  Widget _titleSection() {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 20, right: 20, top: 12),
          child: Row(
            children: [
              Text(
                "Trending now 🔥",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              Text(
                "See all ",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: ColorConstants.primaryColor),
              ),
              Icon(
                Icons.arrow_forward,
                size: 20,
                color: ColorConstants.primaryColor,
              ),
            ],
          ),
        ),
        SizedBox(height: 16),
        //video player section

        SizedBox(
          height: 254,
          child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 20),
              scrollDirection: Axis.horizontal,
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
              separatorBuilder: (context, index) => SizedBox(width: 16),
              itemCount: DummyDb.videoCardData.length),
        ),
      ],
    );
  }

  Widget textSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 22),
          child: Text(
            """Find best recipes
for cooking""",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          child: TextField(
            decoration: InputDecoration(
              hintText: "Search recipes",
              hintStyle: TextStyle(fontSize: 14, color: Colors.black45),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: ColorConstants.grey, width: 1),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: ColorConstants.grey, width: 1),
              ),
              prefixIcon: Icon(
                Icons.search,
                color: ColorConstants.grey,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
