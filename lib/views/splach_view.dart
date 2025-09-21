import 'dart:async';
import 'package:flutter/material.dart';
import 'package:notesapp/views/notes_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const NotesView()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff754B4D),
      body: Center(
        child: TweenAnimationBuilder<double>(
          tween: Tween(begin: 0.0, end: 1.0),
          duration: const Duration(seconds: 2),
          curve: Curves.easeInOut,
          builder: (context, value, child) {
            return Opacity(
              opacity: value,
              child: Transform.scale(
                scale: value,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    CircleAvatar(
                      radius: 40,
                      backgroundColor: Color.fromARGB(255, 134, 96, 98),
                      child: ClipOval(
                        child: Image(
                          image: AssetImage(
                            "assets/images/c879be7933bfa120dcb16a7fb2d3478e.jpg",
                          ),
                          fit: BoxFit.cover,
                          width: 90,
                          height: 90,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Notes App",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
