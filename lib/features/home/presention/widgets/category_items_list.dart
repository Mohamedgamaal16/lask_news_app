import 'package:flutter/material.dart';
import 'package:trendspot_newes_app/features/home/data/models/categories_model.dart';
import 'package:trendspot_newes_app/features/home/presention/widgets/custom_category_item.dart';

class CategoriesItemsList extends StatelessWidget {
  const CategoriesItemsList({super.key});
  static final List<CategoriesModel> categoriesList = [
    CategoriesModel(
        subTitle: 'know more News',
        category: 'general',
        assetImage: 'assets/images/general.jpg'),
    CategoriesModel(
        subTitle: 'making money with news',
        category: 'business',
        assetImage: 'assets/images/business.jpg'),
    CategoriesModel(
        subTitle: 'enjoy ',
        category: 'entertainment',
        assetImage: 'assets/images/Entertainment.jpg'),
    CategoriesModel(
        subTitle: 'be healthy',
        category: 'health',
        assetImage: 'assets/images/health.jpg'),
    CategoriesModel(
        subTitle: 'know more',
        category: 'science',
        assetImage: 'assets/images/science.jpg'),
    CategoriesModel(
        subTitle: 'know about sports',
        category: 'sports',
        assetImage: 'assets/images/sports.jpg'),
    CategoriesModel(
        subTitle: 'Tech Updates',
        category: 'technology',
        assetImage: 'assets/images/technology.jpg'),
  ];
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 269 / 385,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categoriesList.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: CustomCategoryScrollItem(
                title: categoriesList[index].category,
                author: categoriesList[index].subTitle,
                assetimage: categoriesList[index].assetImage,
              ),
            );
          }),
    );
  }
}
