import 'package:flutter/material.dart';
import 'package:trendspot_newes_app/core/utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.color, required this.labeName});
  final Color color;
  final String labeName ;
  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 55,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          elevation: 0,
          backgroundColor: color,
        ),
        onPressed: () {},
        child: Text(
          labeName,
          style: AppStyles.interStyleSemiBold16(context)
              .copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
