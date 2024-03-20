import 'package:flutter/material.dart';
import 'package:trendspot_newes_app/features/explore/presention/widgets/custom_article_item_text.dart';
import 'package:trendspot_newes_app/features/explore/presention/widgets/custom_pic.dart';

class CustomArticleItem extends StatelessWidget {
  const CustomArticleItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: MediaQuery.of(context).size.width*.85,
      height: MediaQuery.of(context).size.width*.2,
      child: const Row(
        children: [
          Expanded(
            child: CustomArticleItemText(
              title: 'hijjkcxfsssssssshghhijjkcxfsssssssshghhijjkcxfsssssssshghhijjkcxfsssssssshgh',
              author: 'mhaifsadk',
            ),
          ),
          SizedBox(width: 16,),
          AspectRatio(aspectRatio: 1, child: CustomPic()),
        ],
      ),
    );
  }
}
