import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trendspot_newes_app/core/widgets/custom_articles_item/custom_articel_item.dart';

class CustomCategoryArticlesList extends StatelessWidget {
  const CustomCategoryArticlesList({super.key});
  static int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: ((context, index) {

      return Padding(
                  padding: const EdgeInsets.only(bottom: 24.0, right: 32),
                  child: GestureDetector(
                    onTap: () {
                      activeIndex = index;
                      
                       
                    },
                    child: const CustomArticleItem(date: '', title: '', imageUrl: '',
                    
                    ),
                  ),
                ) ;
    }));
  }
}




//  Navigator.of(context)
//                           .push(MaterialPageRoute(builder: (builder) {
//                         return ExpolreSingleItemDisplay(
//                           exploreSingleItemModel: ExploreSingleItemModel(
//                             title: state.news[activeIndex].title,
//                             detailes: state.news[activeIndex].description ??
//                                 'detailes',
//                             date: state.news[activeIndex].publishedAt ?? '2024',
//                             authorName:
//                                 state.news[activeIndex].author ?? 'Lask news',
//                             image: state.news[activeIndex].urlToImage ??
//                                 'https://play-lh.googleusercontent.com/tuOKYu0gjp7YgLYn0eglI4j7c100lQjMLcRGnd0RKWx_WBBSgP4f1BNb1_EwCffYqtM',
//                           ),
//                         );
//                       }));