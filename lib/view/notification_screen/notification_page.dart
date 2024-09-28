import 'package:flutter/material.dart';
import 'package:food_recipe_app/models/utils/constans/color_constants.dart';
import 'package:hugeicons/hugeicons.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Notifications",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
          ),
          actions: [
            HugeIcon(
              icon: HugeIcons.strokeRoundedPreferenceHorizontal,
              color: Colors.black,
              size: 25,
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
                    "All",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              Tab(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Text(
                    "Unread",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              Tab(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Text(
                    "Read",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.red,
      ),
    );
  }
}
