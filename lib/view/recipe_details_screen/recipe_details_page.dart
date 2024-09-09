import 'package:flutter/material.dart';

class RecipeDetailsPage extends StatelessWidget {
  RecipeDetailsPage({super.key, required this.title});
  String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_horiz,
              size: 24,
            ),
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            child: Text(
              title,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
            ),
          ),
          Container()
        ],
      ),
    );
  }
}
