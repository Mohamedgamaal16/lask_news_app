import 'package:flutter/material.dart';
import 'package:trendspot_newes_app/core/utils/app_router.dart';

void main() {
  runApp(const LaskNewsApp());
}

class LaskNewsApp extends StatelessWidget {
  const LaskNewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
    
    );
  }
}
