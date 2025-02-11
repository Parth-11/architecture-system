import 'package:architect_system_app/components/StatsPage/stat_page_text.dart';
import 'package:architect_system_app/components/StatsPage/stat_row_element.dart';
import 'package:flutter/material.dart';
import 'util_status/stat_bar.dart';

class StatusPage extends StatelessWidget {
  static const String id = 'Status Page';

  // ignore: use_super_parameters
  const StatusPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Status"),
      ),
      body: Stack(
        fit: StackFit.expand, // Make the stack take up the whole screen
        children: [
          // Background image
          Image.asset(
            "assets/images/bg_stats.jpeg", // Replace with your actual image path
            fit: BoxFit.cover, // Cover the entire screen
          ),
          Center(
            child: Container(
              height: 600,
              width: MediaQuery.of(context).size.width * 1,
              padding: const EdgeInsets.all(30),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.7),
                borderRadius: BorderRadius.circular(10),
                border:
                    Border.all(color: const Color.fromARGB(255, 141, 155, 180)),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const StatPageText(
                    content: 'STATUS',
                    size: 35,
                    weight: FontWeight.bold,
                  ),
                  const Column(
                    children: [
                      StatPageText(
                        content: '5',
                        size: 48,
                      ),
                      // Text(
                      //   "LEVEL",
                      //   style: TextStyle(
                      //     fontSize: 20,
                      //     color: Colors.white,
                      //     fontWeight: FontWeight.bold,
                      //     shadows: [
                      //       Shadow(
                      //         blurRadius: 25.0,
                      //         offset: Offset(0, 0),
                      //         color: Colors.blue,
                      //       ),
                      //     ],
                      //   ),
                      // ),
                      StatPageText(
                        content: 'LEVEL',
                        size: 20,
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color.fromARGB(255, 146, 153, 166)),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            StatBar(
                                label: "REQUIRED POINTS",
                                value: 40,
                                maxValue: 100),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 50),
                  Container(
                    height: 220,
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color.fromARGB(255, 170, 183, 206)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Column(
                      children: [
                        SizedBox(height: 10),
                        StatRowElement(
                          imagePath: "assets/images/logos/dumbell-logo.png",
                          label: 'STRENGTH',
                          value: 30,
                          textStyle: TextStyle(fontSize: 15.5, color: Colors.white),
                        ),
                        SizedBox(height: 10),
                        StatRowElement(
                          label: 'AGILITY',
                          value: 20,
                          imagePath: "assets/images/logos/agility-logo.png",
                          textStyle: TextStyle(fontSize: 15.5, color: Colors.white),
                        ),
                        SizedBox(height: 10),
                        StatRowElement(
                          label: 'PERCEPTION',
                          value: 35,
                          imagePath: 'assets/images/logos/perception-logo.png',
                          textStyle: TextStyle(fontSize: 15.5, color: Colors.white),
                        ),
                        SizedBox(height: 10),
                        StatRowElement(
                          label: 'VIT',
                          value: 28,
                          imagePath: "assets/images/logos/vit-logo.png",
                          textStyle: TextStyle(fontSize: 15.5, color: Colors.white),
                        ),
                        SizedBox(height: 10),
                        StatRowElement(
                          label: 'INTELLIGENCE',
                          value: 30,
                          imagePath: "assets/images/logos/int-logo.png",
                          textStyle: TextStyle(fontSize: 15.5, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
