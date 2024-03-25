import 'package:flutter/material.dart';
import 'package:trendspot_newes_app/core/utils/app_styles.dart';
import 'package:trendspot_newes_app/core/widgets/view_single_item_view/data/explore_single_item_model.dart';

class SingleItemDiplayBody extends StatelessWidget {
  const SingleItemDiplayBody({
    super.key,
    required this.exploreSingleItemModel,
  });
  final SingleItemModel exploreSingleItemModel;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: AspectRatio(
            aspectRatio: 430 / 316,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(exploreSingleItemModel.image),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
            child: Padding(
              padding:const EdgeInsets.symmetric(horizontal: 24),
              child: TextInContainer(
                        exploreSingleItemModel: exploreSingleItemModel,
                      ),
            ))
      ],
    );
  }
}

class TextInContainer extends StatelessWidget {
  const TextInContainer({
    super.key,
    required this.exploreSingleItemModel,
  });
  final SingleItemModel exploreSingleItemModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 24,
        ),
        Text(
          exploreSingleItemModel.title,
          style: AppStyles.interStyleSemiBold32(context),
        ),
        const SizedBox(
          height: 19,
        ),
        Row(
          children: [
            Text(
              exploreSingleItemModel.authorName,
              style: AppStyles.interStyleRegular12(context),
            ),
            const SizedBox(
              width: 8,
            ),
            Text(
              exploreSingleItemModel.date,
              style: AppStyles.interStyleRegular12(context),
            )
          ],
        ),
        const SizedBox(
          height: 27,
        ),
        Text(
          exploreSingleItemModel.detailes,
          style: AppStyles.merriweatherStyleRegular18(context),
        ),
      ],
    );
  }
}
