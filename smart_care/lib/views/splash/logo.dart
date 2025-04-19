import 'package:flutter/material.dart';
import 'package:smart_care/helpers/navigator.dart';
import 'package:smart_care/views/onboarding_screens/onBoarding_1.dart';

class LogoView extends StatelessWidget {
  const LogoView({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      context.removeUntil(view: OnBoardingOneView());
    });
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFF8BBD0), // Light Pink
              Colors.white, // Deeper Pink
            ],
          ),
        ),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Image.asset('assets/images/Ellipse_3.png'),
            ),
            Expanded(
              child: Center(child: Image.asset('assets/images/logo_text.png')),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Image.asset('assets/images/Ellipse_2.png'),
            ),
          ],
        ),
      ),
    );
  }
}
