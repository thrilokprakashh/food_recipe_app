import 'package:flutter/material.dart';
import 'package:food_recipe_app/models/utils/constans/color_constants.dart';
import 'package:food_recipe_app/view/global_widgets/custom_video_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List videoCardData = [
    {
      "rating": "4.5",
      "image":
          "https://images.pexels.com/photos/1640777/pexels-photo-1640777.jpeg?auto=compress&cs=tinysrgb&w=1200",
      "time": "15:10",
      "title": "How to make sushi at home",
      "description": "By Niki Samantha",
      "dp":
          "https://images.pexels.com/photos/13733587/pexels-photo-13733587.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load",
    },
    {
      "rating": "4.8",
      "image":
          "https://images.pexels.com/photos/1600727/pexels-photo-1600727.jpeg?auto=compress&cs=tinysrgb&w=1200",
      "time": "10:45",
      "title": "The Ultimate Vegan Burger",
      "description": "By Chef Leo",
      "dp":
          "https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load",
    },
    {
      "rating": "4.6",
      "image":
          "https://images.pexels.com/photos/70497/pexels-photo-70497.jpeg?auto=compress&cs=tinysrgb&w=1200",
      "time": "12:22",
      "title": "Easy Pasta Recipes",
      "description": "By Maria Johnson",
      "dp":
          "https://images.pexels.com/photos/1342460/pexels-photo-1342460.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load",
    },
    {
      "rating": "4.7",
      "image":
          "https://images.pexels.com/photos/46239/salmon-dish-food-meal-46239.jpeg?auto=compress&cs=tinysrgb&w=1200",
      "time": "18:00",
      "title": "Perfect Grilled Salmon",
      "description": "By Alex Browne",
      "dp":
          "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load",
    },
    {
      "rating": "4.9",
      "image":
          "https://images.pexels.com/photos/825661/pexels-photo-825661.jpeg?auto=compress&cs=tinysrgb&w=1200",
      "time": "14:50",
      "title": "Authentic Italian Pizza",
      "description": "By Luca Santoro",
      "dp":
          "https://images.pexels.com/photos/412840/pexels-photo-412840.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load",
    },
    {
      "rating": "4.3",
      "image":
          "https://images.pexels.com/photos/103124/pexels-photo-103124.jpeg?auto=compress&cs=tinysrgb&w=1200",
      "time": "9:15",
      "title": "Quick Breakfast Ideas",
      "description": "By Emily Grace",
      "dp":
          "https://images.pexels.com/photos/774558/pexels-photo-774558.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load",
    },
    {
      "rating": "4.4",
      "image":
          "https://images.pexels.com/photos/1624487/pexels-photo-1624487.jpeg?auto=compress&cs=tinysrgb&w=1200",
      "time": "17:30",
      "title": "Mastering the Art of Tacos",
      "description": "By Diego Ramirez",
      "dp":
          "https://images.pexels.com/photos/1367192/pexels-photo-1367192.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load",
    },
    {
      "rating": "4.2",
      "image":
          "https://images.pexels.com/photos/267308/pexels-photo-267308.jpeg?auto=compress&cs=tinysrgb&w=1200",
      "time": "11:40",
      "title": "Making French Pastries",
      "description": "By Claire Dupont",
      "dp":
          "https://images.pexels.com/photos/17613679/pexels-photo-17613679/free-photo-of-a-woman-sitting-on-a-blanket-in-a-field.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load",
    },
    {
      "rating": "4.7",
      "image":
          "https://images.pexels.com/photos/1059905/pexels-photo-1059905.jpeg?auto=compress&cs=tinysrgb&w=1200",
      "time": "16:50",
      "title": "Mediterranean Salad Bowls",
      "description": "By Sophia Lee",
      "dp":
          "https://images.pexels.com/photos/769289/pexels-photo-769289.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load",
    },
    {
      "rating": "4.5",
      "image":
          "https://images.pexels.com/photos/406152/pexels-photo-406152.jpeg?auto=compress&cs=tinysrgb&w=1200",
      "time": "22:10",
      "title": "Homemade Ramen Noodles",
      "description": "By Kenji Tanaka",
      "dp":
          "https://images.pexels.com/photos/13733587/pexels-photo-13733587.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load",
    },
    {
      "rating": "4.9",
      "image":
          "https://images.pexels.com/photos/887853/pexels-photo-887853.jpeg?auto=compress&cs=tinysrgb&w=1200",
      "time": "13:30",
      "title": "Delicious Chocolate Desserts",
      "description": "By Bella Noir",
      "dp":
          "https://images.pexels.com/photos/3720429/pexels-photo-3720429.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            textSection(), // #section 1

            _titleSection() //# section 2 - trending now
          ],
        ),
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
                        rating: videoCardData[index]["rating"],
                        image: videoCardData[index]["image"],
                        time: videoCardData[index]["time"],
                        title: videoCardData[index]["title"],
                        description: videoCardData[index]["description"],
                        dp: videoCardData[index]["dp"],
                      ),
                    ],
                  ),
              separatorBuilder: (context, index) => SizedBox(width: 16),
              itemCount: 11),
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
