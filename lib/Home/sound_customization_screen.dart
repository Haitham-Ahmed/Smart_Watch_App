import 'package:flutter/material.dart';
import 'package:smart_watch/Home/glass_breaking_screen.dart';
import 'package:smart_watch/Home/home_screen.dart';
import 'package:smart_watch/Home/settings_screen.dart';

class SoundCustomizationScreen extends StatelessWidget {
  const SoundCustomizationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> sounds = [
      "Glass Breaking",
      "Fire alarm",
      "Small explosion",
      "Doorbell",
      "Knocking",
      "Water running",
      "Car horn",
      "Car brake",
      "Siren",
      "Shouting or Calling",
    ];

    return Scaffold(
      backgroundColor: Colors.purple,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        automaticallyImplyLeading: false, // <== هذا يمنع ظهور السهم
        backgroundColor: Colors.purple.shade700,
        title: const Text(
          "Sound Control", // هنا يتم عرض النص في الوسط
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: ListView.builder(
          itemCount: sounds.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 6),
              child: ListTile(
                tileColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                title: Text(
                  sounds[index],
                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                trailing: const Icon(Icons.arrow_forward_ios, color: Colors.black54),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => GlassBreakingScreen()),
                  );
                },
              ),
            );
          },
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
            if (index == 0) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SettingsScreen()),
              );
            } else if (index == 1) {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) =>  const HomeScreen(),),
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
}

