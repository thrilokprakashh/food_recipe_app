import 'package:flutter/material.dart';
import 'package:food_recipe_app/dummy_db.dart';
import 'package:food_recipe_app/view/global_widgets/custom_video_card.dart';

class BookmarkScreen extends StatefulWidget {
  const BookmarkScreen({super.key});

  @override
  State<BookmarkScreen> createState() => _BookmarkScreenState();
}

class _BookmarkScreenState extends State<BookmarkScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
          padding: EdgeInsets.symmetric(horizontal: 20),
          itemBuilder: (context, index) => Column(
                children: [
                  customVideoCard(
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
          itemCount: DummyDb.videoCardData.length),
    );
  }
}
