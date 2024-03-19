import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:trendspot_newes_app/core/cache/cahche_helper.dart';
import 'package:trendspot_newes_app/core/utils/app_router.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  CacheHelper().init();
  runApp(const LaskNewsApp());
  // runApp(
  //   DevicePreview(
  //     enabled: true,
  //     builder: (context) => const LaskNewsApp(),
  //   ),
  // );
}

class LaskNewsApp extends StatelessWidget {
  const LaskNewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
    );
  }
}
