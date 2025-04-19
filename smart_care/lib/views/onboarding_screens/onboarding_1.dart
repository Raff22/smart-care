import 'package:flutter/material.dart';

class OnBoardingOneView extends StatelessWidget {
  const OnBoardingOneView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset('assets/icons/icon_close.png'),
        backgroundColor:
            Colors.transparent, // Make AppBar transparent to show gradient
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.white, Color(0xFFF8BBD0)],
          ),
        ),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.only(left: 50.0),
                child: Image.asset(
                  'assets/images/night-game-dynamic-soccer-player-action-field@2x.png',
                ),
              ),
              const SizedBox(height: 24.0),
              Padding(
                padding: const EdgeInsets.only(left: 40.0),
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24.0),
                    gradient: const LinearGradient(
                      colors: [
                        Color.fromRGBO(56, 29, 255, 1.0),
                        Color.fromRGBO(196, 12, 196, 0.8),
                      ],
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 32.0,
                      vertical: 12.0,
                    ),
                    child: Center(
                      child: Text(
                        'اكتشف قوتك',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 50),
              const Expanded(
                child: Text(
                  'حلّل حالتك الصحية بدقة وراقب\nمؤشراتك الحيوية لتحسين لياقتك\nوجودة حياتك.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Color.fromRGBO(56, 29, 255, 1.0),
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
