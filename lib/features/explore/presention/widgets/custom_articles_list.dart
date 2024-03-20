import 'package:flutter/material.dart';
import 'package:trendspot_newes_app/features/explore/presention/widgets/custom_articel_item.dart';

class CustomArticlesList extends StatelessWidget {
  const CustomArticlesList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      
      itemCount: 15,
      
      itemBuilder: (itemBuilder,index){
      return const Padding(
        padding: EdgeInsets.only(bottom: 24.0,right: 32),
        child: CustomArticleItem(),
      ) ;
    });
  }
}