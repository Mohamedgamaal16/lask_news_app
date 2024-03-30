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
    return CustomScrollView(slivers: [
      SliverFillRemaining(
        child: Stack(
          fit: StackFit.expand,
          children: [
            Positioned(
              bottom: MediaQuery.of(context).size.height * .5,
              top: 0,
              left: 0,
              right: 0,
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
            Positioned(
              bottom: 0,
              top: MediaQuery.of(context).size.height * .3,
              left: 0,
              right: 0,
              child: Expanded(
                child: TextInContainer(
                  exploreSingleItemModel: exploreSingleItemModel,
                ),
              ),
            )
          ],
        ),
      ),
    ]);
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
    return ClipRRect(
      borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(24), topRight: Radius.circular(24)),
      child: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
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
              SizedBox(
                width: MediaQuery.of(context).size.width * 1,
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        exploreSingleItemModel.authorName,
                        style: AppStyles.interStyleRegular12(context),
                      ),
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
              ),
              const SizedBox(
                height: 27,
              ),
              Expanded(
                child: Text(
                  exploreSingleItemModel.detailes,
                  style: AppStyles.merriweatherStyleRegular18(context),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
