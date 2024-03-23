import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trendspot_newes_app/core/widgets/view_single_item_view/data/explore_single_item_model.dart';
import 'package:trendspot_newes_app/features/explore/presention/manager/explore%20article%20cubit/explore_article_cubit.dart';
import 'package:trendspot_newes_app/features/explore/presention/widgets/custom_articel_item.dart';
import 'package:trendspot_newes_app/core/widgets/view_single_item_view/presention/single_item_display.dart';

class CustomArticlesList extends StatelessWidget {
  const CustomArticlesList({super.key});
  static int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ExploreArticleCubit, ExploreArticleState>(
      builder: (context, state) {
        if (state is ExploreArticleSuccess) {
          return ListView.builder(
              itemCount: state.news.length,
              itemBuilder: (itemBuilder, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 24.0, right: 32),
                  child: GestureDetector(
                    onTap: () {
                      activeIndex = index;
                      state.news[activeIndex];

                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (builder) {
                        return ExpolreSingleItemDisplay(
                          exploreSingleItemModel: ExploreSingleItemModel(
                            title: state.news[activeIndex].title,
                            detailes: state.news[activeIndex].description ??
                                'detailes',
                            date: state.news[activeIndex].publishedAt ?? '2024',
                            authorName:
                                state.news[activeIndex].author ?? 'Lask news',
                            image: state.news[activeIndex].urlToImage ??
                                'https://play-lh.googleusercontent.com/tuOKYu0gjp7YgLYn0eglI4j7c100lQjMLcRGnd0RKWx_WBBSgP4f1BNb1_EwCffYqtM',
                          ),
                        );
                      }));
                    },
                    child: CustomArticleItem(
                      date: state.news[index].publishedAt ?? '2024',
                      title: state.news[index].title,
                      imageUrl: state.news[index].urlToImage ??
                          'https://play-lh.googleusercontent.com/tuOKYu0gjp7YgLYn0eglI4j7c100lQjMLcRGnd0RKWx_WBBSgP4f1BNb1_EwCffYqtM',
                    ),
                  ),
                );
              });
        } else if (state is ExploreArticleFaliure) {
          return Text(state.errMsg);
        } else if (state is ExploreArticleLoading) {
          return const Center(child: CircularProgressIndicator());
        } else {
          return const Text('there was an error please try again');
        }
      },
    );
  }
}
