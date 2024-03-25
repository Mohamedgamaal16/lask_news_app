import 'package:flutter/material.dart';
import 'package:trendspot_newes_app/core/widgets/custom_articles_item/custom_article_item_text.dart';
import 'package:trendspot_newes_app/core/widgets/custom_articles_item/custom_pic.dart';

class CustomArticleItem extends StatelessWidget {
  const CustomArticleItem(
      {super.key,
      required this.date,
      required this.title,
      required this.imageUrl});
  final String date, title, imageUrl;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * .85,
      height: MediaQuery.of(context).size.width * .2,
      child: Row(
        children: [
          Expanded(
            child: CustomArticleItemText(
              title: title,
              date: date,
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          AspectRatio(
              aspectRatio: 1,
              child: CustomPic(
                imageUrl: imageUrl,
              )),
        ],
      ),
    );
  }
}
