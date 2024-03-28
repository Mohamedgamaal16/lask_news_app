import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:trendspot_newes_app/core/utils/app_styles.dart';
import 'package:trendspot_newes_app/core/utils/constants.dart';
import 'package:trendspot_newes_app/core/widgets/custom_articles_item/custom_articel_item.dart';
import 'package:trendspot_newes_app/core/widgets/view_single_item_view/data/explore_single_item_model.dart';
import 'package:trendspot_newes_app/core/widgets/view_single_item_view/presention/single_item_display.dart';
import 'package:trendspot_newes_app/features/explore/presention/manager/explore%20article%20cubit/explore_article_cubit.dart';
import 'package:trendspot_newes_app/features/explore/presention/widgets/custom_articles_list.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    this.color = 1,
  });
  final String title;
  final int color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.width * .12,
      child: Row(
        children: [
          Text(
            title,
            style: color == 1
                ? AppStyles.interStyleSemiBold32(context)
                : AppStyles.interStyleSemiBold32(context)
                    .copyWith(color: AppColors.kBlueColor),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {
              showSearch(context: context, delegate: CustomSearchDelegate());
            },
            icon: const Icon(Icons.search),
          )
        ],
      ),
    );
  }
}

class CustomSearchDelegate extends SearchDelegate {
  List<String> searchTerms = [];
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = '';
          },
          icon: const Icon(Icons.clear))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: const Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    return const Text('data');
  }

  @override
  Widget buildSuggestions(BuildContext context) {
   
    return BlocBuilder<ExploreArticleCubit, ExploreArticleState>(
      builder: (context, state) {
        if (state is ExploreArticleSuccess) {

          final List<String> titlesList = [];

          state.news.forEach((article) {
            titlesList.add(article.title);
          });
 List<String> filter = titlesList.where((element) {
      return element.contains(query);
    }).toList();
          return ListView.builder(
              itemCount:query == ""? state.news.length: filter.length,
              itemBuilder: (itemBuilder, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 24.0, right: 32),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (builder) {
                        return SingleItemDisplay(
                          exploreSingleItemModel: SingleItemModel(
                            title: state.news[index].title,
                            detailes:
                                state.news[index].description ?? 'detailes',
                            date: state.news[index].publishedAt ?? '2024',
                            authorName: state.news[index].author ?? 'Lask news',
                            image: state.news[index].urlToImage ??
                                'https://play-lh.googleusercontent.com/tuOKYu0gjp7YgLYn0eglI4j7c100lQjMLcRGnd0RKWx_WBBSgP4f1BNb1_EwCffYqtM',
                          ),
                        );
                      }));
                    },
                    child: CustomArticleItem(
                      date:query==""? state.news[index].publishedAt ?? '2024':filter[index],
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

