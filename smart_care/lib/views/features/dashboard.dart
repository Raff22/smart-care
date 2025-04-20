import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:smart_care/widgets/onboarding_progress.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

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
                  SizedBox(
                    width: 400,
                    height: 128,
                    child: Image.asset(
                      'assets/images/freepik__dynamic-zoomin-smart-care-text-emerges-against-a-v__10592 (1).png',
                      fit: BoxFit.fill, // Consider using BoxFit
                    ),
                  ),
                  const SizedBox(height: 10),
                  PageIndicatorRow(
                    currentPage: 1,
                    indicatorCount: 4,
                    indicatorSize: 6,
                    spacing: 8,
                  ),
                  const SizedBox(height: 30),
                  Container(
                    width: 400,
                    height: 157,
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
                  const SizedBox(height: 30),
                  Container(
                    width: 400,
                    height: 157,
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
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
