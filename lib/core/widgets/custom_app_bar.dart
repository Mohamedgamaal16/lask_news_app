import 'package:flutter/material.dart';
import 'package:trendspot_newes_app/core/functions/search/custom_search_delegate.dart';
import 'package:trendspot_newes_app/core/utils/app_styles.dart';
import 'package:trendspot_newes_app/core/utils/constants.dart';

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
          // IconButton(
          //   onPressed: () {
          //     showSearch(context: context, delegate: CustomSearchDelegate());
          //   },
          //   icon: const Icon(Icons.search),
          // )
          const CustomSearchIcon(),
        ],
      ),
    );
  }
}
