import 'package:flutter/material.dart';
import 'package:trendspot_newes_app/core/utils/app_styles.dart';
import 'package:trendspot_newes_app/features/home/presention/widgets/custom_text.dart';

class CustomScrollItem extends StatelessWidget {
  const CustomScrollItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          // height: 100,width: 100,
          height: MediaQuery.of(context).size.width * .5,
          width: MediaQuery.of(context).size.width * .5,
          decoration: ShapeDecoration(
            image: const DecorationImage(
              image: AssetImage(
                  'assets/images/language-studies-japan-1220x732.jpg'),
              fit: BoxFit.fill,
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const CustomText()
      ],
    );
  }
}
