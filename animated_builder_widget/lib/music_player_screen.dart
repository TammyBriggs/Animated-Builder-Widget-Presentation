import 'package:flutter/material.dart';
import 'dart:math' show pi;

class MusicPlayerScreen extends StatefulWidget {
  const MusicPlayerScreen({super.key});

  @override
  State<MusicPlayerScreen> createState() => _MusicPlayerScreenState();
}

class _MusicPlayerScreenState extends State<MusicPlayerScreen>
    with SingleTickerProviderStateMixin {
  // AnimationController to drive the spinning animation.
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    // Animation controller to run for 10 seconds and continue repeatedly
    _controller = AnimationController(
      duration: const Duration(seconds: 10), // Controls the speed of one full rotation
      vsync: this,
    );
    // Do not start the animation immediately.
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _togglePlayPause() {
    setState(() {
      if (_controller.isAnimating) {
        _controller.stop();
      } else {
        _controller.repeat(); // This makes it spin continuously
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    const neonBlue = Color(0xFF40D4FE);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Now Playing',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // This is the animatedbuilder widget
            AnimatedBuilder(
              // 1. The 'animation' property: Links the builder to the controller.
              // This controller is what tells the AnimatedBuilder when to update.
              animation: _controller,
              // 2. The 'builder' property: This function is called for every animation frame.
              // It rebuilds only the spinning vinyl, not the whole screen.
              builder: (context, child) {
                return Transform.rotate(
                  angle: _controller.value * 2.0 * pi, // Rotate from 0 to 360 degrees
                  child: child,
                );
              },
              // 3. The 'child' property: This is the static part of the widget.
              // It's built only once and passed to the builder, optimizing performance.
              child: Image.asset('assets/images/vinyl.png', width: 300),
            ),
            const SizedBox(height: 60),
            const Text(
              'Laho II',
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Shallipopi, Burna Boy',
              style: TextStyle(
                color: Colors.white70,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 60),
            IconButton(
              icon: Icon(
                _controller.isAnimating ? Icons.pause_circle_filled : Icons.play_circle_filled,
                color: neonBlue,
              ),
              iconSize: 80,
              onPressed: _togglePlayPause,
            ),
          ],
        ),
      ),
    );
  }
}