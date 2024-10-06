import 'package:flutter/material.dart';
import 'package:food_recipe_app/dummy_db.dart';
import 'package:food_recipe_app/models/utils/constans/color_constants.dart';
import 'package:food_recipe_app/view/global_widgets/custom_recipeCard.dart';
import 'package:food_recipe_app/view/global_widgets/custom_video_card.dart';
import 'package:food_recipe_app/view/profile_screen/widget/custom_profileDataCard.dart';
import 'package:food_recipe_app/view/recipe_details_screen/recipe_details_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'My profile',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
          ),
          actions: [
            Icon(
              Icons.more_horiz,
              size: 30,
              color: ColorConstants.black,
            ),
            SizedBox(
              width: 20,
            ),
          ],
        ),
        body: Column(
          children: [
            _buildProfileImageSection(),
            _buildProfileDataSection(),
            Divider(),
            _buildTabBarSection(),
            _buildTabBarView(),
          ],
        ),
      ),
    );
  }

  Widget _buildTabBarView() => Expanded(
         child: TabBarView(
          children: [_buildRecipeTab(), _buildTab()],
        ),
      );

  Widget _buildTabBarSection() => Column(
        children: [
          TabBar(
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
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              Tab(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Text(
                    "Recipe",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ],
          ),
        ],
      );
  ListView _buildRecipeTab() {
    return ListView.separated(
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
                          image: DummyDb.videoCardData[index]["image"],
                          rating: DummyDb.videoCardData[index]["rating"],
                          dp: DummyDb.videoCardData[index]["dp"],
                          userName: DummyDb.videoCardData[index]["description"],
                        ),
                      ),
                    );
                  },
                  width: double.infinity,
                  rating: DummyDb.videoCardData[index]["rating"],
                  image: DummyDb.videoCardData[index]["image"],
                  time: DummyDb.videoCardData[index]["time"],
                  title: DummyDb.videoCardData[index]["title"],
                  description: DummyDb.videoCardData[index]["description"],
                  dp: DummyDb.videoCardData[index]["dp"],
                ),
              ],
            ),
        separatorBuilder: (context, index) => SizedBox(height: 16),
        itemCount: DummyDb.videoCardData.length);
  }

  ListView _buildTab() {
    return ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        itemBuilder: (context, index) => CustomRecipecard(
              rating: DummyDb.videoCardData[index]["rating"],
              image: DummyDb.videoCardData[index]["image"],
              description: DummyDb.videoCardData[index]["description"],
            ),
        separatorBuilder: (context, index) => SizedBox(height: 16),
        itemCount: 10);
  }

  Widget _buildProfileDataSection() => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomProfileDataCard(
                title: "Recipe",
                value: "3",
              ),
              CustomProfileDataCard(
                title: "Videos",
                value: "13",
              ),
              CustomProfileDataCard(
                title: "Followers",
                value: "14K",
              ),
              CustomProfileDataCard(
                title: "Following",
                value: "120",
              ),
            ],
          ),
        ),
      );

  Widget _buildProfileImageSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                    "https://images.pexels.com/photos/27103859/pexels-photo-27103859/free-photo-of-a-young-woman-sitting-on-the-ground-with-green-plants-in-a-forest.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load"),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                decoration: BoxDecoration(
                    border: Border.all(color: ColorConstants.primaryColor),
                    borderRadius: BorderRadius.circular(10)),
                child: Text(
                  "Edit profile",
                  style: TextStyle(
                      color: ColorConstants.primaryColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 14),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            "Alessandra Blair",
            style: TextStyle(
                color: ColorConstants.black,
                fontWeight: FontWeight.w600,
                fontSize: 20),
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            "Hello world I’m Alessandra Blair, I’m from Italy 🇮🇹 I love cooking so much!",
            textAlign: TextAlign.justify,
            style: TextStyle(
                color: ColorConstants.grey,
                fontWeight: FontWeight.normal,
                fontSize: 14),
          ),
        ],
      ),
    );
  }
}
