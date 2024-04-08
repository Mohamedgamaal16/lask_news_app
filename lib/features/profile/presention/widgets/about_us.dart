// about_us_page.dart

import 'package:flutter/material.dart';
import 'package:trendspot_newes_app/core/utils/app_styles.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Us'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
                        const SizedBox(height: 24.0),

            Center(
              child: Text('Mohamed Gamal Omar',
                  style: AppStyles.interStyleSemiBold24(context)),
            ),
            const SizedBox(height: 24.0),
            Text('Summary:', style: AppStyles.interStyleSemiBold24(context)),
            const SizedBox(height: 8.0),
            Text(
              'Seeking an internship position as a Flutter Developer to leverage my skills in responsive and adaptive UI design, API integration, Firebase, Bloc and Cubit state management, MVVM design pattern, and object-oriented programming to contribute effectively to a dynamic development team.',
              style: AppStyles.interStyleRegular16(context)
                  .copyWith(color: Colors.black),
            ),
            const SizedBox(height: 24.0),
            Text(
              'Education:',
              style: AppStyles.interStyleSemiBold24(context),
            ),
            const SizedBox(height: 8.0),
            Text(
              'Graduate in 2024. Mansoura University – Faculty of Engineering- CCE department.',
              style: AppStyles.interStyleRegular16(context)
                  .copyWith(color: Colors.black),
            ),
            Text(
              'GPA 3.44. B+ (very good +).',
              style: AppStyles.interStyleRegular16(context)
                  .copyWith(color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
