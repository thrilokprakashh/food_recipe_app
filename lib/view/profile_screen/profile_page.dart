import 'package:flutter/material.dart';
import 'package:food_recipe_app/models/utils/constans/color_constants.dart';
import 'package:food_recipe_app/view/profile_screen/widget/custom_profileDataCard.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          _buildTabSection()
        ],
      ),
    );
  }

  Widget _buildTabSection() => Column(
        children: [],
      );

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
