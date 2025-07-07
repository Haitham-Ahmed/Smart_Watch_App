import 'package:flutter/material.dart';
import 'package:smart_watch/Home/home_screen.dart';
import 'package:smart_watch/Home/settings_screen.dart';

class GlassBreakingScreen extends StatefulWidget {
  const GlassBreakingScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _GlassBreakingScreenState createState() => _GlassBreakingScreenState();
}

class _GlassBreakingScreenState extends State<GlassBreakingScreen> {
  double vibrationIntensity = 50;
  double soundIntensity = 50;
  double colorIntensity = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade800,
      appBar: AppBar(
        backgroundColor: Colors.purple.shade700,
        elevation: 0,
        title: const Text(
          "Glass Breaking",
          style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LayoutBuilder(
                  builder: (context, constraints) {
                    return Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: _buildSlider("Vibration Intensity", Colors.green, vibrationIntensity, (value) {
                            setState(() {
                              vibrationIntensity = value;
                            });
                          }),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: _buildSlider("Sound Intensity", Colors.green, soundIntensity, (value) {
                            setState(() {
                              soundIntensity = value;
                            });
                          }),
                        ),
                      ],
                    );
                  },
                ),
                const SizedBox(height: 40),
                _buildSlider("Notification Color", Colors.purple, colorIntensity, (value) {
                  setState(() {
                    colorIntensity = value;
                  });
                }),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.purple,
          unselectedItemColor: Colors.grey,
          currentIndex: 2,
          onTap: (index) {
            if (index == 1) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomeScreen()),
              );
            } else if (index == 0) {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => const SettingsScreen()),
                (route) => false,
              );
            }
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.discord),
              label: 'Discord',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSlider(String label, Color color, double currentValue, ValueChanged<double> onChanged) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 40,
          height: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: 40,
              height: currentValue,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: color,
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Slider(
          value: currentValue,
          min: 0,
          max: 150,
          onChanged: onChanged,
          activeColor: color,
        ),
        Text(label, style: const TextStyle(color: Colors.white)),
      ],
    );
  }
}
