import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smart_watch/Home/home_screen.dart';
import 'package:smart_watch/view/sin_in_screen.dart';
import 'package:smart_watch/view/sin_up_screen.dart';



class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  bool _isSignInSelected = true;

  @override
  void initState() {
    super.initState();
    _checkLoginStatus();
  }

  Future<void> _checkLoginStatus() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool isLoggedIn = prefs.getBool('isLoggedIn') ?? false;
    bool isSessionActive = prefs.getBool('isSessionActive') ?? false;

    if (isLoggedIn && isSessionActive) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) =>  const HomeScreen(),),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Gradient
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.purple, Colors.deepPurpleAccent],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              const Text(
                "Welcome Back!",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "Enter personal details \nto your account",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
              const Spacer(),
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // Sign In
                    TextButton(
                      style: TextButton.styleFrom(
                        foregroundColor: _isSignInSelected ? Colors.white : Colors.black,
                        backgroundColor: _isSignInSelected ? Colors.purple : Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        side: BorderSide(
                          color: _isSignInSelected ? Colors.purple : Colors.transparent,
                          width: 2,
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          _isSignInSelected = true;
                        });
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const SignInScreen()),
                        );
                      },
                      child: const Text("Sign in", style: TextStyle(fontSize: 18)),
                    ),

                    // Sign Up
                    TextButton(
                      style: TextButton.styleFrom(
                        foregroundColor: !_isSignInSelected ? Colors.white : Colors.black,
                        backgroundColor: !_isSignInSelected ? Colors.purple : Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        side: BorderSide(
                          color: !_isSignInSelected ? Colors.purple : Colors.transparent,
                          width: 2,
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          _isSignInSelected = false;
                        });
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const SinUpScreen()),
                        );
                      },
                      child: const Text("Sign up", style: TextStyle(fontSize: 18)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
