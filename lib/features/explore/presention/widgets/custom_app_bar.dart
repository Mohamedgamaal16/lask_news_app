import 'package:flutter/material.dart';
import 'package:trendspot_newes_app/core/utils/app_styles.dart';

class CustomExploreAppBar extends StatelessWidget {
  const CustomExploreAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.width * .12,
      child: Row(
        children: [
          Text('Explore',style: AppStyles.interStyleSemiBold32(context),),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        ],
      ),
    );
  }
}
