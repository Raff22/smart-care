import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:smart_care/widgets/onboarding_progress.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  int currentPicIndex = 0;
  List picList = ['smart.png', 'running.png', 'tennis.png', 'weights.png'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            Colors.white, // Make AppBar transparent to show gradient
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.white, Color.fromARGB(255, 224, 197, 247)],
          ),
        ),
        child: Center(
          child: Stack(
            children: [
              Positioned(
                bottom: 0,
                child: SizedBox(
                  width:
                      MediaQuery.of(
                        context,
                      ).size.width, // Set width to screen width
                  child: Image.asset(
                    'assets/images/Group 1984079898.png',
                    fit: BoxFit.fill, // Consider using BoxFit
                  ),
                ),
              ),
              Column(
                // Changed Center to Column to align bottom row
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        if (currentPicIndex == 3) {
                          currentPicIndex = 0;
                        } else {
                          currentPicIndex++;
                        }
                      });
                    },
                    child: SizedBox(
                      width: 400,
                      height: 150,
                      child: Image.asset(
                        // ignore: prefer_interpolation_to_compose_strings
                        'assets/images/' + picList[currentPicIndex],
                        fit: BoxFit.fill, // Consider using BoxFit
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  PageIndicatorRow(
                    currentPage: currentPicIndex,
                    indicatorCount: 4,
                    indicatorSize: 6,
                    spacing: 8,
                  ),
                  const SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Container(
                      decoration: BoxDecoration(
                        border: const GradientBoxBorder(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromRGBO(55, 29, 255, 0.627),
                              Color.fromRGBO(196, 12, 196, 0.627),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          width: 2, // Border width
                        ),
                        borderRadius: BorderRadius.circular(
                          7,
                        ), // Optional: rounded corners
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment
                                          .spaceBetween, // Distribute space evenly
                                  children: [
                                    Transform.rotate(
                                      angle:
                                          math.pi +
                                          90, // 180 degrees in radians
                                      child: Image.asset(
                                        'assets/icons/icon_close.png',
                                      ),
                                    ),
                                    Text(
                                      "اللاعبين",
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        color: Color.fromRGBO(
                                          196,
                                          12,
                                          196,
                                          0.627,
                                        ),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                      ), // Optional: Style the text
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Image.asset('assets/images/player3.png'),
                                  Image.asset('assets/images/player1.png'),
                                  Image.asset('assets/images/player2.png'),
                                ],
                              ),
                              Divider(
                                color: Color.fromRGBO(55, 29, 255, 0.627),
                              ),
                              Image.asset('assets/icons/group_arrow.png'),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Container(
                    width: 400,
                    height: 262,
                    decoration: BoxDecoration(
                      border: const GradientBoxBorder(
                        gradient: LinearGradient(
                          colors: [
                            Color.fromRGBO(55, 29, 255, 0.627),
                            Color.fromRGBO(196, 12, 196, 0.627),
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        width: 2, // Border width
                      ),
                      borderRadius: BorderRadius.circular(
                        7,
                      ), // Optional: rounded corners
                    ),
                    child: const Center(
                      child: Text(
                        'Gradient Border Container',
                        style: TextStyle(
                          color: Colors.white,
                        ), // Ensure text is visible
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildSquareButton('الإعدادات', () {
                        // Add your action for button 1
                        print('Button 1 pressed');
                      }),
                      _buildSquareButton('AI Chat', () {
                        // Add your action for button 2
                        print('Button 2 pressed');
                      }),
                      _buildSquareButton('التحليلات', () {
                        // Add your action for button 3
                        print('Button 3 pressed');
                      }),
                      _buildSquareButton('الرئيسية', () {
                        // Add your action for button 4
                        print('Button 4 pressed');
                      }),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildSquareButton(String label, VoidCallback onPressed) {
  return SizedBox(
    width: 77,
    height: 73,
    child: DecoratedBox(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Colors.white, // Example gradient start color (Pink)
            Color.fromARGB(
              255,
              184,
              133,
              229,
            ), // Example gradient end color (Purple)
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        borderRadius: BorderRadius.circular(3),
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor:
              Colors.transparent, // Make button background transparent
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
          elevation: 0, // Remove default button elevation
        ),
        child: Center(
          child: Text(
            label,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Color.fromRGBO(55, 29, 255, 0.627),
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ), // Optional: Style the text
          ),
        ),
      ),
    ),
  );
}
