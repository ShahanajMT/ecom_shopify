import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:tstore/features/authentication/screens/onBoarding/onboarding_screen.dart';

import 'utils/theme/theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'eCom Shopify',
      themeMode: ThemeMode.dark,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      home: const OnboardingScreen(),
    );
  }
}