import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trendspot_newes_app/core/widgets/view_single_item_view/data/explore_single_item_model.dart';
import 'package:trendspot_newes_app/core/widgets/view_single_item_view/presention/single_item_display.dart';
import 'package:trendspot_newes_app/features/home/presention/manager/just_for_you_cubit/just_for_you_cubit.dart';
import 'package:trendspot_newes_app/features/home/presention/widgets/custom_for_you_scroll_item.dart';

class JustForYouItemList extends StatelessWidget {
  const JustForYouItemList({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<JustForYouCubit, JustForYouState>(
      builder: (context, state) {
        if (state is JustForYouSuccess) {
          return AspectRatio(
            aspectRatio: 269 / 385,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 8,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 24.0),
                    child: GestureDetector( onTap: () {
                       

                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (builder) {
                        return SingleItemDisplay(
                          exploreSingleItemModel: SingleItemModel(
                            title: state.news[index].title,
                            detailes: state.news[index].description ??
                                'detailes',
                            date: state.news[index].publishedAt ??  '2024',
                            authorName:
                                state.news[index].author ?? 'Lask news',
                            image: state.news[index].urlToImage ??
                                'https://play-lh.googleusercontent.com/tuOKYu0gjp7YgLYn0eglI4j7c100lQjMLcRGnd0RKWx_WBBSgP4f1BNb1_EwCffYqtM',
                          ),
                        );
                      }));
                    },
                      child: CustomForYouScrollItem(
                        title: state.news[index].title,
                        author:
                            state.news[index].author?.toString() ?? "Lask News",
                        imageUrl: state.news[index].urlToImage ??
                            'https://play-lh.googleusercontent.com/tuOKYu0gjp7YgLYn0eglI4j7c100lQjMLcRGnd0RKWx_WBBSgP4f1BNb1_EwCffYqtM',
                      ),
                    ),
                  );
                }),
          );
        } else if (state is JustForYouLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is JustForYouFaliure) {
          return Text(state.errMsg);
        } else {
          return const Text('there was an error please try again');
        }
      },
    );
  }
}
