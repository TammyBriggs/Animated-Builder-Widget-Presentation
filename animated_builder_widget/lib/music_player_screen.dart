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

